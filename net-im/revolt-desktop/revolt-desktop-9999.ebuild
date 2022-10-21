# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/revoltchat/desktop.git"
	KEYWORDS="-*"
else
	SRC_URI="https://github.com/revoltchat/desktop/archive/refs/tags/v1.0.4.tar.gz -> ${PN}-${PV}.tar.gz"
	S="${WORKDIR}/desktop-1.0.4"
	KEYWORDS="*"
fi

DESCRIPTION="An open source user-first chat platform."
HOMEPAGE="https://revolt.chat"

LICENSE="GNU AGPLv3"
SLOT="0"
IUSE="wayland"

#REQUIRED_USE=""

DEPEND=""
BDEPEND="${DEPEND} sys-apps/yarn"
#RDEPEND="${DEPEND} "

#DOCS=( )

src_prepare() {
	cd "${S}"
	use wayland && eapply "${FILESDIR}/application-wayland"
}

src_compile() {
	cd "${S}"

	yarn
	yarn build:bundle
	yarn build:linux:unpacked
}

src_install() {
	insinto "/usr/lib/revolt"
	doins "${S}/dist/linux-unpacked/"*
}
