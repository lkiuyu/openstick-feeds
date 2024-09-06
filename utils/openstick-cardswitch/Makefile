# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=openstick-cardswitch
PKG_VERSION:=v1.0
PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=Utilities
  CATEGORY:=Utilities
  TITLE:= (CardSwitch scripts for Openstick)
  DEPENDS:=+gc +rmtfs +PACKAGE_luci:luci-proto-modemmanager
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
    $(INSTALL_DIR) $(1)/etc/cardswitch
	$(INSTALL_BIN) ./files/cardswitch.sh $(1)/etc/cardswitch/

	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/autoswitch $(1)/etc/uci-defaults/
	
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
