#
# Copyright (C) 2020-2021 HandsomeMod Project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=qrtr
PKG_VERSION:=1.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/linux-msm/qrtr.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=5923eea97377f4a3ed9121b358fd919e3659db7b
PKG_MIRROR_HASH:=783cbf7846675eeeea7f24758c996f0fd144fb1e166ce6686afd7f7d89aaa3c6

PKG_LICENSE:=BSD-3-Clause

include $(INCLUDE_DIR)/nls.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libqrtr
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Userspace reference for net/qrtr in the Linux kernel
endef

define Package/qrtr-ns
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libqrtr
  TITLE:=qrtr daemon
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libqrtr.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

define Package/libqrtr/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

define Package/qrtr-ns/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/qrtr.init $(1)/etc/init.d/qrtr

	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/qrtr-* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libqrtr))
$(eval $(call BuildPackage,qrtr-ns))
