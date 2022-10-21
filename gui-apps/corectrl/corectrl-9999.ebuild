# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI=""
	#EGIT_BRANCH=""
	KEYWORDS="~*"
else
	SRC_URI=""
	#S=""
	KEYWORDS="*"
fi

DESCRIPTION="Tool for managing "
HOMEPAGE=""

LICENSE=""
SLOT="0"
#IUSE=""

#REQUIRED_USE=""

DEPEND=""
BDEPEND="${DEPEND} linguist-tools"
#RDEPEND="${DEPEND} "

#DOCS=( )

