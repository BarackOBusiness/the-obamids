# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/marcusbritanicus/QtGreet.git"
	KEYWORDS="-*"
else
	SRC_URI="https://github.com/marcusbritanicus/QtGreet/archive/refs/tags/v1.0.0.tar.gz"
	S="${WORKDIR}/QtGreet-1.0.0"
	KEYWORDS="amd64 ~x86"
fi

DESCRIPTION="A Qt based greeter for greetd to be run under wlroots based wayland compositors."
HOMEPAGE="https://github.com/marcusbritanicus/QtGreet"
 
LICENSE="GPL-3"
SLOT="0"
 
DEPEND="dev-qt/qtwayland gui-libs/wlroots gui-libs/greetd"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND} >=dev-util/cmake-3.16.0 sys-devel/make kde-frameworks/extra-cmake-modules"

src_prepare() {
	eapply_user

	python setup.py prepare --no-greetd
}

src_compile() {
	python setup.py build --no-greetd
}

src_install() {
	python setup.py install --prefix ${D} --no-greetd
}
