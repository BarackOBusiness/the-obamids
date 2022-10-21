EAPI=7

inherit git-r3

DESCRIPTION="glibc and LSB compatabiity later for musl libc"
HOMEPAGE="https://git.adelielinux.org/adelie/gcompat"
EGIT_REPO_URL="https://git.adelielinux.org/adelie/gcompat.git"

LICENSE="UoI-NCSA"
SLOT=0
KEYWORDS="~amd64 -*"
IUSE=""

DEPEND="
	!sys-libs/glibc
	sys-libs/musl
"
RDEPEND="${DEPEND}"

DOCS="CHANGELOG.rst README.rst"

src_compile() {
	emake \
		LIBGCOMPAT_PATH=/$(get_libdir)/libgcompat.so.0 \
		LINKER_PATH=/$(get_libdir)/ld-musl-x86_64.so.1 \
		LOADER_NAME=ld-linux-x86-64.so.2 \
		LOADER_PATH=/lib64/ld-linux-x86-64.so.2
}

src_install() {
	emake DESTDIR="${D}" \
		LIBGCOMPAT_PATH=/$(get_libdir)/libgcompat.so.0 \
		LINKER_PATH=/$(get_libdir)/ld-musl-x86_64.so.1 \
		LOADER_NAME=ld-linux-x86-64.so.2 \
		LOADER_PATH=/lib64/ld-linux-x86-64.so.2 install

	einstalldocs
}
