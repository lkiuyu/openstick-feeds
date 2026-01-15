include $(TOPDIR)/rules.mk

PKG_NAME:=qmi-modem-410-init
PKG_VERSION:=1.0
PKG_RELEASE:=5

PKG_MAINTAINER:=lkiuyu <lkiuyu@gmail.com>
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/qmi-modem-410-init
  SECTION:=Utilities
  CATEGORY:=Utilities
  TITLE:=QMI Modem Initialization Script For 410 Modem Stick
  DEPENDS:=+libqmi
  PKGARCH:=all
endef

define Package/qmi-modem-410-init/description
  Initializes QMI modem settings on boot for 410 Modem Stick.
  Supports resetting EPS APN and activating SIM for specific hardware.
endef

define Build/Compile
endef

define Package/qmi-modem-410-init/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/qmi-modem-410-init.sh $(1)/usr/bin/qmi-modem-410-init
	
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/qmi-modem-410-init.init $(1)/etc/init.d/qmi-modem-410-init
endef

$(eval $(call BuildPackage,qmi-modem-410-init))
