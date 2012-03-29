#!/usr/bin/python

import os, sys

def _get_my_directory():
	return os.path.dirname(__file__)


def _get_template_file_path(basename):
	return os.path.join( _get_my_directory(), "../templates/%s.tpl" % basename)

def _create_target_directory(sections, basedir):
	base_path = os.path.join( _find_git(), basedir )
	for section in sections[:-1]:
		base_path = os.path.join( base_path, section )
		if not os.path.exists( base_path ):
			os.mkdir( base_path, 0744 )
	return base_path	


def _find_git():
	path = _get_my_directory()
	while True:
		test = os.path.join(path, ".git")
		if os.path.exists( test ):
			return path
		if os.path.ismount( path ):
			raise Exception("Couldn't find .git folder")
		path = os.path.abspath( os.path.join( path, ".." ) )

def _build_target_file_path(sections, ext, basedir):
	base_path = _create_target_directory(sections, basedir)
	return os.path.join( base_path, "%s.%s" % (sections[-1],ext) )

def find_git():
	return _find_git()

def get_template(basename):
	return _get_template_file_path(basename)

def create_target_directory(sections, basedir):
	return _create_target_directory(sections, basedir)


def build_target_file_path(sections, ext, basedir):
	return _build_target_file_path(sections, ext, basedir)
