#!/usr/bin/python

import os, sys, re

from utils import get_template, find_git, create_target_directory, build_target_file_path

EVIPP_HEADER_GENERATOR_BASE_DIR="include/html5"

def _create_target_directory(sections):
	return create_target_directory(sections, EVIPP_HEADER_GENERATOR_BASE_DIR)

def _build_include_guard(sections):
	guard = ""
	for section in sections:
		guard = "%s_%s" % ( guard, section.upper() )
	return "%s_HPP_" % guard

def _build_namespace_begin(sections):
	namespaces = []
	for section in sections[:-1]:
		namespaces.append( "namespace %s {" % section )
	return os.linesep.join(namespaces)

def _build_namespace_end(sections):
	return "}" * (len(sections) - 1)


def _format_file(sections):
	tplf = open( get_template('header'), 'r' )
	tpl = os.linesep.join( re.split(r'\r\n|\r|\n', tplf.read() ) )
	tplf.close()

	tpl = tpl.replace('%GUARD_NAME%', _build_include_guard(sections) )
	tpl = tpl.replace('%NAMESPACE_BEGIN%', _build_namespace_begin(sections) )
	tpl = tpl.replace('%NAMESPACE_END%', _build_namespace_end(sections) )

	hdrf = open(build_target_file_path(sections, 'hpp', EVIPP_HEADER_GENERATOR_BASE_DIR), 'w')
	hdrf.write(tpl)
	hdrf.close()


def generate(path):
	"""
		Generates a header file from the passed path information
	"""
	sections = path.split('/')
	_format_file(sections)
	
generate(sys.argv[1])
