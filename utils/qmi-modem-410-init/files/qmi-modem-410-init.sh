#!/bin/sh
# QMI Modem Initialization Script

MODEL_FILE="/sys/firmware/devicetree/base/model"
LOG_FILE="/var/log/qmi-modem-init.log"
MAX_RETRIES=10
RETRY_DELAY=5

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

check_qmi_device() {
    local retry=0
    while [ $retry -lt $MAX_RETRIES ]; do
        if [ -c "/dev/wwan0qmi0" ]; then
            return 0
        fi
        log "QMI device not found, retry $((retry+1))/$MAX_RETRIES"
        sleep $RETRY_DELAY
        retry=$((retry+1))
    done
    return 1
}

reset_eps_apn() {
    log "Resetting EPS APN for models matching: $ResetEpsApnModelKeyWords"
    if qmicli -d /dev/wwan0qmi0 -p --wds-modify-profile="3gpp,3,apn='',pdp-type=IPV4V6,auth=NONE,username='',password=''"; then
        log "EPS APN reset successful"
        return 0
    else
        log "Failed to reset EPS APN"
        return 1
    fi
}

activate_sim() {
    log "Activating SIM for models matching: $ActiveSimModelKeyWords"
    
    APPLICATION_ID=$(qmicli -d /dev/wwan0qmi0 -p --uim-get-card-status 2>/dev/null | \
                    awk '/Application ID:/ {getline; gsub(/[[:space:]]/, ""); print $0; exit}')
    
    if [ -z "$APPLICATION_ID" ]; then
        log "Failed to get Application ID"
        return 1
    fi
    
    log "Found Application ID: $APPLICATION_ID"
    
    # Activate new session
    if qmicli -d /dev/wwan0qmi0 -p --uim-change-provisioning-session="slot=1,activate=yes,session-type=primary-gw-provisioning,aid=$APPLICATION_ID"; then
        log "Successfully activated provisioning session with AID: $APPLICATION_ID"
        return 0
    else
        log "Failed to activate provisioning session"
        return 1
    fi
}

main() {
    log "Starting QMI modem initialization"
    
    # Check if model file exists
    if [ ! -f "$MODEL_FILE" ]; then
        log "Model file not found: $MODEL_FILE"
        return 1
    fi
    
    # Read model
    MODEL=$(cat "$MODEL_FILE" 2>/dev/null)
    log "Device model: $MODEL"
    
    # Define model keywords
    ResetEpsApnModelKeyWords="uz801|jz02v10|gexing-sp970"
    ActiveSimModelKeyWords="gexing-sp970"
    
    # Check if device matches any keywords
    if ! echo "$MODEL" | grep -qE "$ResetEpsApnModelKeyWords"; then
        log "Device model does not match any known pattern"
        return 0
    fi
    
    # Stop ModemManager
    log "Stopping ModemManager"
    /etc/init.d/modemmanager stop 2>/dev/null
    
    # Wait for QMI device
    if ! check_qmi_device; then
        log "QMI device not found after maximum retries"
        /etc/init.d/modemmanager start 2>/dev/null
        return 1
    fi
    
    # Reset EPS APN if needed
    if echo "$MODEL" | grep -qE "$ResetEpsApnModelKeyWords"; then
        reset_eps_apn
    fi

    sleep 1
    
    # Activate SIM if needed
    if echo "$MODEL" | grep -qE "$ActiveSimModelKeyWords"; then
        activate_sim
    fi

    sleep 1
    
    # Set SMS Default Storage
    echo -e 'AT+CPMS="ME","ME","ME"\r' > /dev/wwan0at1

    sleep 1
    
    # Start ModemManager
    log "Starting ModemManager"
    /etc/init.d/modemmanager start 2>/dev/null
    
    log "QMI modem initialization completed"
    return 0
}

# Run main function
main "$@"
