# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit meson

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/Javyre/swayfire"
	#EGIT_BRANCH=""
else
	SRC_URI=""
	#S=""
	KEYWORDS="*"
fi

DESCRIPTION="Sway/I3 inspired tiling window manager plugin for Wayfire."
HOMEPAGE="https://github.com/Javyre/swayfire"

LICENSE="GNU GPLv3"
SLOT="0"
#IUSE=""

#REQUIRED_USE=""

DEPEND=">=gui-wm/wayfire-0.8.0 x11-libs/cairo x11-libs/pixman"
#BDEPEND="${DEPEND} "
#RDEPEND="${DEPEND} "

#DOCS=( )

src_prepare() {
	eapply_user
	cd "${S}"
	mkdir build && cd build
	meson
}

src_compile() {
	cd "${S}"
	ninja -C build
}
