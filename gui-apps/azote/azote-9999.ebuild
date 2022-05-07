EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/nwg-piotr/azote.git"
	KEYWORDS="-*"
else
	SRC_URI="https://github.com/nwg-piotr/azote/archive/refs/tags/v1.9.3.tar.gz"
	S="${WORKDIR}/azote-1.9.3"
	KEYWORDS="amd64 ~x86"
fi

DESCRIPTION="A gtk based background and color manager for sway."
HOMEPAGE="https://github.com/nwg-piotr/azote"
 
LICENSE="GPL-3"
SLOT="0"
 
DEPEND="dev-lang/python dev-python/pillow >=x11-libs/gtk+-3.0.0 dev-python/pycairo dev-python/send2trash"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"

src_install() {
	install -D -m 755 ${S}/dist/azote ${D}/usr/bin/azote
	install -D -t ${D}/usr/share/pixmaps ${S}/dist/azote.svg
	install -D -t ${D}/usr/share/${PN} ${S}/dist/indicator*.png
	install -D -t ${D}/usr/share/applications ${S}/dist/azote.desktop
	install -Dm 644 ${S}/LICENSE-COLORTHIEF ${D}/usr/share/licenses/${PN}/LICENSE-COLORTHIEF
	python setup.py install --root=${D} --optimize=1
}
