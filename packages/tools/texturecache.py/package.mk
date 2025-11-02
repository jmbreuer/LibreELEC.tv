# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="texturecache.py"
PKG_VERSION="0a334fb997cb5242958aef4eb28da68423850eb8"
PKG_SHA256="bdeda226c43f7fb71b1c3d4c070463da12da7efd28e050e9d3aa2b6da25e3a92"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/texturecache.py"
PKG_URL="https://github.com/xbmc/${PKG_NAME}/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="The Swiss Army knife for Kodi"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    cp -PRv texturecache.py ${INSTALL}/usr/bin
    cp -PRv tools/mklocal.py ${INSTALL}/usr/bin
    chmod +x ${INSTALL}/usr/bin/*
}
