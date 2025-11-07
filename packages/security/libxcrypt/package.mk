# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libxcrypt"
PKG_VERSION="4.5.1"
PKG_SHA256="e9b46a62397c15372935f6a75dc3929c62161f2620be7b7f57f03d69102c1a86"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://github.com/besser82/libxcrypt"
PKG_URL="https://github.com/besser82/libxcrypt/releases/download/v${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="glibc"
PKG_LONGDESC="Extended crypt library for descrypt, md5crypt, bcrypt, and others"

if [ "${MOLD_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" mold:host"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-obsolete-api"
