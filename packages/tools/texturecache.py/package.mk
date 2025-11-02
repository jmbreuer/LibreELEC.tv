# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="texturecache.py"
PKG_VERSION="2.5.6"
PKG_SHA256="75a6e78c1f7371dfc273a7ae851445e1be38cc427b99e2a5d7f347f146fe10ef"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/texturecache"
PKG_URL="https://github.com/xbmc/texturecache/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="The Swiss Army knife for Kodi"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    cp -PRv texturecache.py ${INSTALL}/usr/bin
    cp -PRv tools/mklocal.py ${INSTALL}/usr/bin
    chmod +x ${INSTALL}/usr/bin/*
}
