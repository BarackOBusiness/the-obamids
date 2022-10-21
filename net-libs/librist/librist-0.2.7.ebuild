# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://code.videolan.org/rist/librist"
	#EGIT_BRANCH=""
	KEYWORDS="-*"
else
	SRC_URI="https://code.videolan.org/rist/librist/-/archive/v0.2.7/librist-v0.2.7.tar.bz2"
	S="${WORKDIR}/librist-v0.2.7"
	KEYWORDS="~*"
fi

DESCRIPTION="A library able to be used to easily add the RIST protocol to your application"
HOMEPAGE="https://www.rist.tv/"

LICENSE="BSD 2-Clause Simplified"
SLOT="0"
#IUSE=""

#REQUIRED_USE=""

DEPEND="dev-util/cmocka"
BDEPEND="${DEPEND} dev-util/meson"
RDEPEND="${DEPEND} dev-libs/cJSON"

#DOCS=( )

