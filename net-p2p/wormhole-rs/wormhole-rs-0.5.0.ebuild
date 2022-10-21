# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.1

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	aead-0.4.3
	aho-corasick-0.7.18
	async-attributes-1.1.2
	async-channel-1.6.1
	async-executor-1.4.1
	async-global-executor-2.0.3
	async-io-1.6.0
	async-lock-2.5.0
	async-mutex-1.4.0
	async-process-1.3.0
	async-std-1.11.0
	async-task-4.2.0
	async-tls-0.11.0
	async-tungstenite-0.17.1
	atomic-waker-1.0.0
	atty-0.2.11
	autocfg-1.1.0
	backtrace-0.3.64
	base64-0.13.0
	bitflags-1.3.2
	block-0.1.6
	block-buffer-0.10.2
	blocking-1.2.0
	bumpalo-3.9.1
	bytecodec-0.4.15
	bytecount-0.6.2
	byteorder-1.4.3
	bytes-1.1.0
	c_linked_list-1.1.1
	cache-padded-1.2.0
	cc-1.0.73
	cfg-if-1.0.0
	cipher-0.3.0
	clap-3.1.6
	clap_derive-3.1.4
	clipboard-win-4.4.1
	color-eyre-0.6.1
	color-spantrace-0.2.0
	concurrent-queue-1.2.2
	console-0.15.0
	convert_case-0.4.0
	cpufeatures-0.2.2
	crc-2.1.0
	crc-catalog-1.1.1
	crossbeam-utils-0.8.8
	crypto-common-0.1.3
	ctor-0.1.22
	ctrlc-3.2.1
	curve25519-dalek-3.2.1
	darling-0.10.2
	darling_core-0.10.2
	darling_macro-0.10.2
	derive-new-0.5.9
	derive_more-0.99.17
	dialoguer-0.10.0
	digest-0.9.0
	digest-0.10.3
	downcast-rs-1.2.0
	encode_unicode-0.3.6
	env_logger-0.9.0
	error-code-2.3.1
	event-listener-2.5.2
	eyre-0.6.7
	fastrand-1.7.0
	filetime-0.2.15
	fixedbitset-0.4.1
	fnv-1.0.7
	form_urlencoded-1.0.1
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-lite-1.12.0
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	futures_ringbuf-0.3.1
	gcc-0.3.55
	generic-array-0.14.5
	get_if_addrs-0.5.3
	get_if_addrs-sys-0.1.1
	getrandom-0.1.16
	getrandom-0.2.5
	gimli-0.26.1
	gloo-timers-0.2.3
	hashbrown-0.11.2
	heck-0.4.0
	hermit-abi-0.1.19
	hex-0.4.3
	hkdf-0.12.3
	hmac-0.12.1
	hmac-sha1-0.1.3
	http-0.2.6
	httparse-1.6.0
	humantime-2.1.0
	ident_case-1.0.1
	idna-0.2.3
	indenter-0.3.3
	indexmap-1.8.0
	indicatif-0.16.2
	instant-0.1.12
	itoa-1.0.1
	js-sys-0.3.56
	kv-log-macro-1.0.7
	lazy_static-1.4.0
	libc-0.2.121
	log-0.4.16
	log-derive-0.4.1
	malloc_buf-0.0.6
	matches-0.1.9
	md5-0.7.0
	memchr-2.4.1
	memoffset-0.6.5
	minimal-lexical-0.2.1
	miniz_oxide-0.4.4
	nix-0.22.3
	nix-0.23.1
	nom-7.1.1
	num-traits-0.2.14
	num_cpus-1.13.1
	num_threads-0.1.5
	number_prefix-0.4.0
	numtoa-0.1.0
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	object-0.27.1
	once_cell-1.10.0
	opaque-debug-0.3.0
	os_pipe-1.0.1
	os_str_bytes-6.0.0
	owo-colors-3.3.0
	parking-2.0.0
	percent-encoding-2.1.0
	petgraph-0.6.0
	pin-project-lite-0.2.8
	pin-utils-0.1.0
	pkg-config-0.3.24
	polling-2.2.0
	poly1305-0.7.2
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.36
	quick-xml-0.22.0
	quote-1.0.16
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	redox_syscall-0.2.11
	redox_termios-0.1.2
	regex-1.5.5
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	ring-0.16.20
	ringbuf-0.2.7
	rmp-0.8.10
	rmp-serde-1.0.0
	rustc-demangle-0.1.21
	rustc_version-0.4.0
	rustls-0.19.1
	ryu-1.0.9
	salsa20-0.9.0
	sct-0.6.1
	semver-1.0.6
	serde-1.0.136
	serde_derive-1.0.136
	serde_json-1.0.79
	sha-1-0.10.0
	sha1-0.2.0
	sha2-0.10.2
	sharded-slab-0.1.4
	signal-hook-0.3.13
	signal-hook-registry-1.4.0
	slab-0.4.5
	smallvec-1.8.0
	socket2-0.4.4
	spake2-0.3.1
	spin-0.5.2
	str-buf-1.0.5
	strsim-0.9.3
	strsim-0.10.0
	stun_codec-0.2.0
	subtle-2.4.1
	syn-1.0.89
	tar-0.4.38
	tempfile-3.3.0
	termcolor-1.1.3
	terminal_size-0.1.17
	termion-1.5.6
	textwrap-0.15.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	thread_local-1.1.4
	time-0.3.7
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tracing-0.1.32
	tracing-core-0.1.23
	tracing-error-0.2.0
	tracing-subscriber-0.3.9
	trackable-0.2.24
	trackable-1.2.0
	trackable_derive-1.0.0
	tree_magic_mini-3.0.3
	tungstenite-0.17.2
	typenum-1.15.0
	unicode-bidi-0.3.7
	unicode-normalization-0.1.19
	unicode-width-0.1.9
	unicode-xid-0.2.2
	universal-hash-0.4.1
	untrusted-0.7.1
	url-2.2.2
	utf-8-0.7.6
	valuable-0.1.0
	value-bag-1.0.0-alpha.8
	version_check-0.9.4
	waker-fn-1.1.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.2+wasi-snapshot-preview1
	wasm-bindgen-0.2.79
	wasm-bindgen-backend-0.2.79
	wasm-bindgen-futures-0.4.29
	wasm-bindgen-macro-0.2.79
	wasm-bindgen-macro-support-0.2.79
	wasm-bindgen-shared-0.2.79
	wayland-client-0.29.4
	wayland-commons-0.29.4
	wayland-protocols-0.29.4
	wayland-scanner-0.29.4
	wayland-sys-0.29.4
	web-sys-0.3.56
	webpki-0.21.4
	webpki-roots-0.21.1
	wepoll-ffi-0.1.2
	winapi-0.2.8
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	wl-clipboard-rs-0.6.0
	x11-clipboard-0.6.0
	xattr-0.2.2
	xcb-1.1.1
	xml-rs-0.8.4
	xsalsa20poly1305-0.8.0
	zeroize-1.3.0
"

inherit cargo

DESCRIPTION="wormhole-rs"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="homepage field in Cargo.toml inaccessible to cargo metadata"
SRC_URI="$(cargo_crate_uris)"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 EUPL-1.2 ISC MIT MPL-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"