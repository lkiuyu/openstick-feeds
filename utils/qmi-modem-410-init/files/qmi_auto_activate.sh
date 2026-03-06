#!/bin/sh
set -eu

# 默认配置
DEVICE="/dev/wwan0qmi0"
SLOT="1"
DEVICE_PATH="qcom-soc"
TRIGGER_PATTERN="Refresh stage: end-with-success"
MODE="monitor"   # 或 "once"

# 解析命令行参数
usage() {
    echo "Usage: $0 [--once] [--device DEVICE] [--slot SLOT] [--device-path PATH] [--pattern PATTERN]"
    exit 1
}

while [ $# -gt 0 ]; do
    case "$1" in
        --once) MODE="once"; shift ;;
        --device) DEVICE="$2"; shift 2 ;;
        --slot) SLOT="$2"; shift 2 ;;
        --device-path) DEVICE_PATH="$2"; shift 2 ;;
        --pattern) TRIGGER_PATTERN="$2"; shift 2 ;;
        --help) usage ;;
        *) echo "Unknown option: $1"; usage ;;
    esac
done

# 检查 qmicli
if ! command -v qmicli >/dev/null 2>&1; then
    echo "错误: qmicli 未找到，请安装 libqmi-utils" >&2
    exit 1
fi

# 执行 qmicli 命令，失败时退出（子 shell 中仅退出子 shell）
run_qmicli() {
    output=$(qmicli -d "$DEVICE" -p "$@" 2>&1)
    if [ $? -ne 0 ]; then
        echo "错误: qmicli 命令执行失败: $*" >&2
        echo "$output" >&2
        exit 1
    fi
    echo "$output"
}

# 激活逻辑：检查 SIM 卡状态，若缺失则激活配置会话
activate_if_sim_missing() {
    echo "执行激活检查..."
    # 获取卡状态
    echo "获取卡状态..."
    card_status=$(run_qmicli --uim-get-card-status)

    # 从卡状态中提取指定槽位的 Personalization state
    personalization_state=$(echo "$card_status" | awk -v slot="$SLOT" '
        $0 ~ "Slot \\[" slot "\\]:" { in_slot = 1; next }
        in_slot && /Personalization state:/ {
            split($0, a, ":")
            gsub(/^[ \t'\'']+|[ \t'\'']+$/, "", a[2])
            print a[2]
            exit
        }
    ')

    if [ -z "$personalization_state" ]; then
        echo "错误: 未能从卡状态中获取卡槽 $SLOT 的 Personalization state" >&2
        exit 1
    fi

    echo "卡槽 $SLOT 的个人化状态: $personalization_state"

    # 判断是否缺失
    state_lower=$(echo "$personalization_state" | tr '[:upper:]' '[:lower:]')
    if [ "$state_lower" = "ready" ]; then
        echo "SIM 卡已就绪，无需激活。"
        exit 0
    fi

    echo "SIM 卡缺失（状态: $personalization_state），准备激活配置会话..."

    # 从卡状态中提取 Application ID
    app_id=$(echo "$card_status" | awk '
        /Application ID:/ { getline; gsub(/[[:space:]]+/, "", $0); print; exit }
    ')

    if [ -z "$app_id" ]; then
        echo "错误: 未找到 Application ID" >&2
        exit 1
    fi

    echo "找到 Application ID: $app_id"

    # 执行激活命令
    activate_cmd="--uim-change-provisioning-session=slot=$SLOT,activate=yes,session-type=primary-gw-provisioning,aid=$app_id"
    echo "执行激活命令: qmicli -d $DEVICE -p $activate_cmd"
    output=$(qmicli -d "$DEVICE" -p "$activate_cmd" 2>&1)
    if [ $? -ne 0 ]; then
        echo "错误: 激活配置会话失败" >&2
        echo "$output" >&2
        exit 1
    fi

    echo "激活配置会话成功"

    sleep 2

    # 在后台启动 inhibit
    timeout 1 mmcli --inhibit-device="$DEVICE_PATH" || true   # 忽略失败

    # 等待足够时间让设备被释放
    sleep 1

    echo "设备重新探测完成，请检查 SIM 卡状态。"
    exit 0
}

# 根据模式执行
if [ "$MODE" = "once" ]; then
    activate_if_sim_missing
else
    # 监控模式
    echo "开始监控 qmicli 输出，触发词：'$TRIGGER_PATTERN'"
    echo "设备: $DEVICE, 卡槽: $SLOT, 设备路径: $DEVICE_PATH"
    echo "按 Ctrl+C 停止监控"

    # 构建监控命令（使用 stdbuf 保证实时输出）
    if command -v stdbuf >/dev/null 2>&1; then
        CMD="stdbuf -oL qmicli -d $DEVICE -p --uim-monitor-refresh-all"
        echo "使用 stdbuf 确保实时输出"
    else
        CMD="qmicli -d $DEVICE -p --uim-monitor-refresh-all"
        echo "警告：stdbuf 未安装，输出可能有延迟。如需实时性请安装 coreutils-stdbuf"
    fi

    # 循环监控，进程退出后自动重启
    while true; do
        echo "启动监控进程..."
        eval $CMD | while read line; do
            echo "$line"
            case "$line" in
                *"$TRIGGER_PATTERN"*)
                    echo "检测到刷新成功，执行激活脚本..."
                    # 在子 shell 中执行激活，避免阻塞监控
                    ( activate_if_sim_missing ) &
                    ;;
            esac
        done
        echo "监控进程已退出，5秒后重启..."
        sleep 5
    done
fi
