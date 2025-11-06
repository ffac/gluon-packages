# SPDX-FileCopyrightText: 2025 Marius Wehrmann and Florian Maurer
# SPDX-License-Identifier: BSD-2-Clause
include $(TOPDIR)/rules.mk

PKG_NAME:=ffac-mt7915-maxinactivity
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=BSD-2-Clause

include $(TOPDIR)/../package/gluon.mk

define Package/$(PKG_NAME)
  TITLE:=Set maxinactivity for hostapd as hotfix for mt7915 tx issues
endef

define Package/$(PKG_NAME)/description
  This Package fixes mt7915 disassoc issues and provides configurability of maxinactivity.
  Further informations can be found here: https://github.com/openwrt/mt76/issues/1009
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
