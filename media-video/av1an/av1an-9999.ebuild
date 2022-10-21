# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.1

EAPI=8

CRATES="
	affinity-0.1.2
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.56
	arbitrary-0.4.7
	arg_enum_proc_macro-0.3.2
	arrayref-0.3.6
	arrayvec-0.7.2
	atty-0.2.14
	autocfg-1.1.0
	av-bitstream-0.1.2
	av-data-0.3.0
	av-format-0.3.1
	av-ivf-0.2.3
	bindgen-0.59.2
	bitflags-1.3.2
	bitstream-io-1.3.0
	bumpalo-3.9.1
	byte-slice-cast-1.2.1
	bytes-1.1.0
	cc-1.0.73
	cexpr-0.6.0
	cfg-expr-0.7.4
	cfg-if-1.0.0
	chrono-0.4.19
	clang-sys-1.3.1
	clap-3.1.6
	clap_derive-3.1.4
	const_fn_assert-0.1.2
	core-foundation-sys-0.8.3
	crossbeam-channel-0.5.4
	crossbeam-deque-0.8.1
	crossbeam-epoch-0.9.8
	crossbeam-utils-0.8.8
	dashmap-5.2.0
	either-1.6.1
	encode_unicode-0.3.6
	enum-iterator-0.7.0
	enum-iterator-derive-0.7.0
	err-derive-0.2.4
	errno-0.2.8
	errno-dragonfly-0.1.2
	ffmpeg-next-5.0.3
	ffmpeg-sys-next-5.0.1
	flexi_logger-0.22.3
	form_urlencoded-1.0.1
	getrandom-0.2.5
	getset-0.1.2
	git2-0.14.2
	glob-0.3.0
	hashbrown-0.11.2
	heck-0.3.3
	heck-0.4.0
	hermit-abi-0.1.19
	idna-0.2.3
	indexmap-1.8.0
	indicatif-0.17.0-rc.4
	interpolate_name-0.2.3
	itertools-0.10.3
	itoa-1.0.1
	jobserver-0.1.24
	js-sys-0.3.56
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.121
	libfuzzer-sys-0.3.5
	libgit2-sys-0.13.2+1.4.2
	libloading-0.7.3
	libz-sys-1.1.5
	lock_api-0.4.6
	log-0.4.16
	matches-0.1.9
	maybe-rayon-0.1.0
	memchr-2.4.1
	memoffset-0.6.5
	minimal-lexical-0.2.1
	mio-0.8.2
	miow-0.3.7
	nasm-rs-0.2.4
	new_debug_unreachable-1.0.4
	nom-7.1.1
	noop_proc_macro-0.3.0
	ntapi-0.3.7
	num-bigint-0.3.3
	num-derive-0.3.3
	num-integer-0.1.44
	num-rational-0.3.2
	num-traits-0.2.14
	num_cpus-1.13.1
	num_threads-0.1.5
	number_prefix-0.4.0
	once_cell-1.10.0
	os_str_bytes-6.0.0
	parking_lot-0.12.0
	parking_lot_core-0.9.1
	paste-1.0.6
	path_abs-0.5.1
	peeking_take_while-0.1.2
	percent-encoding-2.1.0
	pin-project-lite-0.2.8
	pkg-config-0.3.24
	plotters-0.3.1
	plotters-backend-0.3.2
	plotters-svg-0.3.1
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.36
	quickcheck-1.0.3
	quickcheck_macros-1.0.0
	quote-1.0.16
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	rayon-1.5.1
	rayon-core-1.9.1
	redox_syscall-0.2.12
	regex-1.5.5
	regex-syntax-0.6.25
	rust_hawktracer-0.7.0
	rust_hawktracer_normal_macro-0.4.1
	rust_hawktracer_proc_macro-0.4.1
	rustc-hash-1.1.0
	rustc_version-0.4.0
	rustversion-1.0.6
	ryu-1.0.9
	scopeguard-1.1.0
	semver-1.0.6
	serde-1.0.136
	serde_derive-1.0.136
	serde_json-1.0.79
	shlex-1.1.0
	signal-hook-registry-1.4.0
	simd_helpers-0.1.0
	simdutf8-0.1.3
	smallvec-1.8.0
	smawk-0.3.1
	splines-4.0.3
	std_prelude-0.2.12
	stfu8-0.2.5
	strsim-0.10.0
	strum-0.21.0
	strum-0.24.0
	strum_macros-0.21.1
	strum_macros-0.24.0
	syn-1.0.89
	synstructure-0.12.6
	sysinfo-0.23.5
	system-deps-3.1.2
	termcolor-1.1.3
	terminal_size-0.1.17
	textwrap-0.15.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	time-0.1.43
	time-0.3.9
	time-macros-0.2.4
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tokio-1.17.0
	toml-0.5.8
	unicode-bidi-0.3.7
	unicode-linebreak-0.1.2
	unicode-normalization-0.1.19
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unicode-xid-0.2.2
	url-2.2.2
	vcpkg-0.2.15
	vergen-7.0.0
	version-compare-0.0.11
	version_check-0.9.4
	wasi-0.10.2+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.79
	wasm-bindgen-backend-0.2.79
	wasm-bindgen-macro-0.2.79
	wasm-bindgen-macro-support-0.2.79
	wasm-bindgen-shared-0.2.79
	web-sys-0.3.56
	which-4.2.5
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.32.0
	windows_aarch64_msvc-0.32.0
	windows_i686_gnu-0.32.0
	windows_i686_msvc-0.32.0
	windows_x86_64_gnu-0.32.0
	windows_x86_64_msvc-0.32.0
	y4m-0.7.0
"

inherit cargo

DESCRIPTION="Cross-platform command-line AV1 / VP9 / HEVC / H264 encoding framework with per scene quality encoding"
HOMEPAGE="https://github.com/master-of-zen/Av1an"

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/master-of-zen/Av1an"
else
	SRC_URI="https://github.com/master-of-zen/Av1an/archive/refs/tags/0.3.1.tar.gz 
	$(cargo_crate_uris)"
	KEYWORDS="amd64"
fi

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="GPL-3"
SLOT="0"

#DEPEND=""
#BDEPEND=""
#RDEPEND=""

src_unpack() {
	if [[ "${PV}" == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else	
		cargo_src_unpack
	fi
}

src_configure() {
	local myfeatures=(
		ffmpeg_static
	)
	cargo_src_configure
}

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install
	einstalldocs
}
