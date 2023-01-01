# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit cmake-multilib python-any-r1 git-r3
EGIT_REPO_URI="https://github.com/clybius/aom-av1-lavish.git"
EGIT_BRANCH="Endless_Merging"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~riscv ~sparc ~x86"

DESCRIPTION="Alliance for Open Media AV1 Codec - fork for improved psychovisual tuning"
HOMEPAGE="https://github.com/Clybius/aom-av1-lavish"

LICENSE="BSD-2"
SLOT="0/3"
IUSE="doc +examples"
IUSE="${IUSE} cpu_flags_x86_mmx cpu_flags_x86_sse cpu_flags_x86_sse2 cpu_flags_x86_sse3 cpu_flags_x86_ssse3"
IUSE="${IUSE} cpu_flags_x86_sse4_1 cpu_flags_x86_sse4_2 cpu_flags_x86_avx cpu_flags_x86_avx2"
IUSE="${IUSE} cpu_flags_arm_neon"
IUSE="${IUSE} butteraugli vmaf"

REQUIRED_USE="
	cpu_flags_x86_sse2? ( cpu_flags_x86_mmx )
	cpu_flags_x86_ssse3? ( cpu_flags_x86_sse2 )
"

BDEPEND="
	${PYTHON_DEPS}
	abi_x86_32? ( dev-lang/yasm )
	abi_x86_64? ( dev-lang/yasm )
	abi_x86_x32? ( dev-lang/yasm )
	doc? ( app-doc/doxygen )
	butteraugli? ( media-libs/libjxl )
	vmaf? ( media-libs/libvmaf )
"

RDEPEND="
	butteraugli? ( media-libs/libjxl )
	vmaf? ( media-libs/libvmaf )
"

# the PATENTS file is required to be distributed with this package, bug #682214
DOCS=( PATENTS )

multilib_src_configure() {
	local mycmakeargs=(
		-DENABLE_CCACHE=OFF
		-DENABLE_DOCS=$(multilib_native_usex doc ON OFF)
		-DENABLE_EXAMPLES=$(multilib_native_usex examples ON OFF)
		-DENABLE_NASM=OFF
		-DENABLE_TESTS=OFF
		-DENABLE_TOOLS=ON
		-DENABLE_WERROR=OFF
		-DCONFIG_FRAME_PARALLEL_ENCODE=1

		# Needs libjxl, currently unpackaged.
		-DCONFIG_TUNE_BUTTERAUGLI=$(usex butteraugli 1 0)
		-DCONFIG_TUNE_VMAF=$(usex vmaf 1 0)

		# neon support is assumed to be always enabled on arm64
		-DENABLE_NEON=$(usex cpu_flags_arm_neon ON $(usex arm64 ON OFF))
		# ENABLE_DSPR2 / ENABLE_MSA for mips
		-DENABLE_MMX=$(usex cpu_flags_x86_mmx ON OFF)
		-DENABLE_SSE=$(usex cpu_flags_x86_sse ON OFF)
		-DENABLE_SSE2=$(usex cpu_flags_x86_sse2 ON OFF)
		-DENABLE_SSE3=$(usex cpu_flags_x86_sse3 ON OFF)
		-DENABLE_SSSE3=$(usex cpu_flags_x86_ssse3 ON OFF)
		-DENABLE_SSE4_1=$(usex cpu_flags_x86_sse4_1 ON OFF)
		-DENABLE_SSE4_2=$(usex cpu_flags_x86_sse4_2 ON OFF)
		-DENABLE_AVX=$(usex cpu_flags_x86_avx ON OFF)
		-DENABLE_AVX2=$(usex cpu_flags_x86_avx2 ON OFF)
	)

	cmake_src_configure
}

multilib_src_install() {
	if multilib_is_native_abi && use doc ; then
		local HTML_DOCS=( "${BUILD_DIR}"/docs/html/. )
	fi

	cmake_src_install
}

multilib_src_install_all() {
	find "${ED}" -type f \( -name "*.a" -o -name "*.la" \) -delete || die
}
