# -*- coding: utf-8 -*-
#
# Default documentation build configuration file for Sphinx.
#
# This file is execfile()d with the current directory set to its containing dir.
#
# The contents of this file are pickled, so don't put values in the namespace
# that aren't pickleable (module imports are okay, they're removed automatically).
#
# All configuration values have a default value; values that are commented out
# serve to show the default value.

import sys
import os


# General configuration
# ---------------------

sys.path.insert(0, '/sbiasfw/lab/basis/2.1.2/centos5/lib/python/basis/sphinx/ext/')
extensions = ['sphinx.ext.todo'] + []

authors = ['Jimit Doshi']
output_name = 'MASS_Software_Manual'.replace(' ', '_') # otherwise generated Makefile's do not work

today     = ''
today_fmt = '%B %d, %Y'

exclude_patterns = ['**/.svn', '**/.git', '**/CMakeFiles/**', '**/CMakeLists.txt']
exclude_patterns.extend([])

templates_path = []

source_suffix = '.rst'
master_doc = 'index'

project   = 'MASS'
version   = '1.1'
release   = 'v1.1'
copyright = '2014 University of Pennsylvania'


# Options for HTML output
# -----------------------

html_static_path = []

html_theme = 'sbia'
html_theme_path = ['', '/sbiasfw/lab/basis/2.1.2/centos5/share/sphinx-themes']
if html_theme_path[0] == '': html_theme_path.pop(0)

html_theme_options = {'rellinks': ['about', 'download', 'installation', 'manual', 'publications', 'people']}
html_sidebars = {'**': ['searchbox.html', 'globaltoc.html']}

html_style = ''
if html_style == '': html_style = None

html_logo = ''
if html_logo == '': html_logo = None

html_title = ''
if html_title == '': html_title = 'MASS'

html_short_title = ''
if html_short_title == '': html_short_title = html_title

htmlhelp_basename = 'mass_doc'


# Options for LaTeX output
# ------------------------

latex_documents     = [(master_doc, output_name + '.tex', 'MASS Software Manual', ' \\and '.join(authors), 'howto', False)]
latex_logo          = ''
if latex_logo == '': latex_logo = None
latex_show_urls     = 'no'
latex_show_pagerefs = False

PREAMBLE = """
\setcounter{page}{1}
\pagenumbering{arabic}
"""

latex_elements = {'printindex': '', 'preamble': PREAMBLE}


# Options for MAN output
# ----------------------

man_pages = [(master_doc, output_name, 'Multi Atlas Skull Stripping', authors, 7)]


# Options for Texinfo output
# --------------------------

texinfo_documents = [(master_doc, output_name, '', '@*'.join(authors), 'MASS', 'Multi Atlas Skull Stripping', 'SBIA', False)]


# Options for extensions
# ----------------------

doxylink                = {}
breathe_projects        = {}
breathe_default_project = ''
