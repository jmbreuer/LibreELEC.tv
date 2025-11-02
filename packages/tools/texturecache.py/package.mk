# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="texturecache.py"
PKG_VERSION="2.4.6"
PKG_SHA256="0e28ccf1dfeacb0509c4372fe77b8b4cd8f1ab8511acc5802fd01dff41743f96"
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
