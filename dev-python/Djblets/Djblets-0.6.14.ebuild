# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/Djblets/Attic/Djblets-0.6.14.ebuild,v 1.1 2012/06/22 07:28:02 xmw Exp $

EAPI=4
PYTHON_DEPEND="2"

inherit distutils versionator

DESCRIPTION="A collection of useful extensions for Django"
HOMEPAGE="http://github.com/djblets"
SRC_URI="http://downloads.reviewboard.org/releases/${PN}/$(get_version_component_range 1-2)/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-python/django-1.5*
	virtual/python-imaging"

PYTHON_MODNAME="djblets"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}
