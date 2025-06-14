#
# Copyright (C) 2020-2022 HandsomeMod Project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=qcom-firmware
PKG_VERSION:=1034.2.2
PKG_RELEASE:=2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/lkiuyu/qcom-firmware.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=ee7769323c0512767169a543d33976ce479eeb15
PKG_MIRROR_HASH:=e063856239fec1ab6ff0f34a5c65cd5ad417fc32538b91cf69f3dd1dda6ef8ef

PKG_MAINTAINER:=Handsomeyingyan <handsomeyingyan@gmail.com>
STRIP:=:

include $(INCLUDE_DIR)/package.mk

define Package/qcom-firmware-default
  SECTION:=firmware
  CATEGORY:=Firmware
endef

define Build/Compile
	mkdir -p $(PKG_BUILD_DIR)/dragonboard
	mcopy -i $(PKG_BUILD_DIR)/dragonboard-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/dragonboard
	mkdir -p $(PKG_BUILD_DIR)/openstick-ufi001b
	mcopy -i $(PKG_BUILD_DIR)/openstick-ufi001b-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-ufi001b
	mkdir -p $(PKG_BUILD_DIR)/openstick-ufi001c
	mcopy -i $(PKG_BUILD_DIR)/openstick-ufi001c-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-ufi001c
	mkdir -p $(PKG_BUILD_DIR)/openstick-ufi003
	mcopy -i $(PKG_BUILD_DIR)/openstick-ufi003-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-ufi003
	mkdir -p $(PKG_BUILD_DIR)/openstick-ufi103s
	mcopy -i $(PKG_BUILD_DIR)/openstick-ufi103s-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-ufi103s
	mkdir -p $(PKG_BUILD_DIR)/openstick-sp970
	mcopy -i $(PKG_BUILD_DIR)/openstick-sp970-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-sp970
	mkdir -p $(PKG_BUILD_DIR)/openstick-uz801
	mcopy -i $(PKG_BUILD_DIR)/openstick-uz801-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-uz801
	mkdir -p $(PKG_BUILD_DIR)/openstick-qrzl903
	mcopy -i $(PKG_BUILD_DIR)/openstick-qrzl903-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-qrzl903
	mkdir -p $(PKG_BUILD_DIR)/openstick-w001
	mcopy -i $(PKG_BUILD_DIR)/openstick-w001-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-w001
	mkdir -p $(PKG_BUILD_DIR)/openstick-mf32
	mcopy -i $(PKG_BUILD_DIR)/openstick-mf32-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-mf32
	mkdir -p $(PKG_BUILD_DIR)/openstick-mf601
	mcopy -i $(PKG_BUILD_DIR)/openstick-mf601-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-mf601
	mkdir -p $(PKG_BUILD_DIR)/openstick-wf2
	mcopy -i $(PKG_BUILD_DIR)/openstick-wf2-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/openstick-wf2
	mkdir -p $(PKG_BUILD_DIR)/wt88047
	mcopy -i $(PKG_BUILD_DIR)/wt88047-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/wt88047
	mkdir -p $(PKG_BUILD_DIR)/wt86047
	mcopy -i $(PKG_BUILD_DIR)/wt86047-modem.bin -p -m -n -v \
		::image/mba.mbn ::image/modem.* ::image/wcnss.* $(PKG_BUILD_DIR)/wt86047	
endef

define Package/qcom-apq8016-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm apq8016 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-ufi001b-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick UFI001B WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-ufi001c-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick UFI001C WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-ufi003-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick UFI003 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-ufi103s-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick UFI103S WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-sp970-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick SP970 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-uz801-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick UZ801 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-qrzl903-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick QRZL903 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-w001-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick W001 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-mf32-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick MF32 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-mf601-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick MF601 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-openstick-wf2-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Openstick WF2 WIFI & Bluetooth firmware
endef

define Package/qcom-msm8916-wt8x047-wcnss-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Redmi 2 WIFI & Bluetooth firmware
endef

define Package/qcom-apq8016-wcnss-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm apq8016 WIFI nv data
endef

define Package/qcom-msm8916-wcnss-wt88047-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Wingtech Wt88047
endef

define Package/qcom-msm8916-wcnss-openstick-ufi001b-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick UFI001B
endef

define Package/qcom-msm8916-wcnss-openstick-ufi001c-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick UFI001C
endef

define Package/qcom-msm8916-wcnss-openstick-ufi003-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick UFI003
endef

define Package/qcom-msm8916-wcnss-openstick-ufi103s-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick UFI103S
endef

define Package/qcom-msm8916-wcnss-openstick-sp970-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick SP970
endef

define Package/qcom-msm8916-wcnss-openstick-uz801-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick UZ801
endef

define Package/qcom-msm8916-wcnss-openstick-qrzl903-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick QRZL903
endef

define Package/qcom-msm8916-wcnss-openstick-w001-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick W001
endef

define Package/qcom-msm8916-wcnss-openstick-mf32-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick MF32
endef

define Package/qcom-msm8916-wcnss-openstick-mf601-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick MF601
endef

define Package/qcom-msm8916-wcnss-openstick-wf2-nv
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 WIFI nv data for Handsome Openstick WF2
endef

define Package/qcom-apq8016-modem-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm apq8016 modem firmware
endef

define Package/qcom-msm8916-modem-wt88047-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for wingtech wt88047
endef

define Package/qcom-msm8916-modem-wt86047-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for wingtech wt86047
endef

define Package/qcom-msm8916-modem-openstick-ufi001b-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick UFI001B
endef

define Package/qcom-msm8916-modem-openstick-ufi001c-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick UFI001C
endef

define Package/qcom-msm8916-modem-openstick-ufi003-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick UFI003
endef

define Package/qcom-msm8916-modem-openstick-ufi103s-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick UFI103S
endef

define Package/qcom-msm8916-modem-openstick-sp970-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick SP970
endef

define Package/qcom-msm8916-modem-openstick-uz801-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick UZ801
endef

define Package/qcom-msm8916-modem-openstick-qrzl903-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick QRZL903
endef

define Package/qcom-msm8916-modem-openstick-w001-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick W001
endef

define Package/qcom-msm8916-modem-openstick-mf32-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick MF32
endef

define Package/qcom-msm8916-modem-openstick-mf601-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick MF601
endef

define Package/qcom-msm8916-modem-openstick-wf2-firmware
  $(Package/qcom-firmware-default)
  TITLE:=Qualcomm msm8916 modem firmware for Handsome Openstick WF2
endef

define Package/qcom-apq8016-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/dragonboard/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-ufi001b-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001b/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-ufi001c-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001c/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-ufi003-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi003/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-ufi103s-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi103s/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-sp970-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-sp970/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-uz801-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-uz801/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-qrzl903-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-qrzl903/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-w001-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-w001/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-mf32-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf32/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-mf601-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf601/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-openstick-wf2-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-wf2/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-wt8x047-wcnss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt88047/wcnss.* \
		$(1)/lib/firmware
endef

define Package/qcom-apq8016-wcnss-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/dragonboard-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-wt88047-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt8x047-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-ufi001b-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001b-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-ufi001c-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001c-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-ufi003-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi003-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-ufi103s-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi103s-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-sp970-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-sp970-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-uz801-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-uz801-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-qrzl903-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-qrzl903-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-w001-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-w001-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-mf32-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf32-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-mf601-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf601-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-msm8916-wcnss-openstick-wf2-nv/install
	$(INSTALL_DIR) $(1)/lib/firmware/wlan/prima
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-wf2-nv.bin \
		$(1)/lib/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
endef

define Package/qcom-apq8016-modem-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/dragonboard/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/dragonboard/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-wt88047-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt88047/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt88047/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-wt86047-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt86047/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/wt86047/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-ufi001b-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001b/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001b/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-ufi001c-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001c/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi001c/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-ufi003-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi003/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi003/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-ufi103s-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi103s/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-ufi103s/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-sp970-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-sp970/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-sp970/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-uz801-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-uz801/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-uz801/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-qrzl903-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-qrzl903/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-qrzl903/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-w001-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-w001/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-w001/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-mf32-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf32/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf32/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-mf601-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf601/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-mf601/modem.* \
		$(1)/lib/firmware
endef

define Package/qcom-msm8916-modem-openstick-wf2-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-wf2/mba.mbn \
		$(1)/lib/firmware
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/openstick-wf2/modem.* \
		$(1)/lib/firmware
endef

$(eval $(call BuildPackage,qcom-apq8016-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-ufi001b-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-ufi001c-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-ufi003-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-ufi103s-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-sp970-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-uz801-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-qrzl903-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-w001-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-mf32-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-mf601-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-openstick-wf2-wcnss-firmware))
$(eval $(call BuildPackage,qcom-msm8916-wt8x047-wcnss-firmware))
$(eval $(call BuildPackage,qcom-apq8016-wcnss-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-wt88047-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-ufi001b-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-ufi001c-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-ufi003-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-ufi103s-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-sp970-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-uz801-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-qrzl903-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-w001-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-mf32-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-mf601-nv))
$(eval $(call BuildPackage,qcom-msm8916-wcnss-openstick-wf2-nv))
$(eval $(call BuildPackage,qcom-apq8016-modem-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-wt88047-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-wt86047-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-ufi001b-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-ufi001c-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-ufi003-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-ufi103s-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-sp970-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-uz801-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-qrzl903-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-w001-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-mf32-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-mf601-firmware))
$(eval $(call BuildPackage,qcom-msm8916-modem-openstick-wf2-firmware))
