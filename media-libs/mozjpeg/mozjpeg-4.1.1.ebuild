# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

<<<<<<< HEAD
EAPI=8

inherit cmake-multilib java-pkg-opt-2

DESCRIPTION="Improved JPEG encoder based on libjpeg-turbo"
HOMEPAGE="https://github.com/mozilla/mozjpeg"
SRC_URI="https://github.com/mozilla/${PN}/archive/refs/tags/v${PV}.tar.gz"
S="${WORKDIR}/${PN}-${PV}"
=======
EAPI=7

inherit cmake

DESCRIPTION="Improved JPEG encoder based on libjpeg-turbo"
HOMEPAGE="https://github.com/mozilla/mozjpeg"
SRC_URI="https://github.com/mozilla/${PN}/archive/refs/tags/v${PV}.zip"
>>>>>>> parent of 592219d (Remove mozjpeg till I figure out how to build it, and make it a replacement for libjpeg-turbo)

LICENSE="BSD IJG"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sys-libs/zlib"
DEPEND="${RDEPEND}
	dev-lang/nasm"

<<<<<<< HEAD
=======
S=${WORKDIR}/${PN}-${PV}

>>>>>>> parent of 592219d (Remove mozjpeg till I figure out how to build it, and make it a replacement for libjpeg-turbo)
src_install() {
	# wrapper to use renamed libjpeg.so (allows coexistence with libjpeg-turbo)
	echo -e '#!/bin/sh\nLD_PRELOAD="libmozjpeg.so $LD_PRELOAD" .$(basename $0) "$@"' > wrapper
	newbin wrapper mozcjpeg
	newbin wrapper mozjpegtran

	newbin .libs/cjpeg .mozcjpeg
	newbin .libs/jpegtran .mozjpegtran
	newlib.so .libs/libjpeg.so.62.2.0 libmozjpeg.so
	dodoc README.md README-mozilla.txt usage.txt wizard.txt
}
<<<<<<< HEAD
=======

>>>>>>> parent of 592219d (Remove mozjpeg till I figure out how to build it, and make it a replacement for libjpeg-turbo)
