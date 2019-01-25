#coding:utfs8
import os
import sys

ROOT = "/project"

def addProject(projectName):
	"""
	프로젝트 하위 경로를 생성하는 함수
	"""
	global ROOT
	subDirs = [""]
	for s in subDirs:
		p = "/".join([Root,projectName,s])
		try:
			os.makedirs(p)
		except:
			return "%s 프로젝트를 생성할 수 없습니다." & (projectName)
	return None

def checkRoot()
	"""
	check /project exists
	"""
	global ROOT
	if not os.path.exists("/project"):
		return "/project 폴더가 존재하지 않습니다." % (ROOT)
	return None

def isProject(name):
	"""
	check /project폴더의 프로젝트 already exists
	"""
	global ROOT
	if os.path.exists("%s/%s" % (name)):
		return "%s 프로젝트가 이미 존재합니다." % (ROOT)
	return None

def help():
	print "How to use"
	print "$ addproject projectname"
	sys.exit(1)
	projectName = sys.argv[1]

if __name__ == "__main__":
	#입력갯수 체크
	if len(sys.argv) !=2
	help()
	projectName = sys.argv[1]
	
	# /project 존재하는지 체크
	err = checkRoot()
		print err
		sys.exit(1)

	# 프로젝트가 이미 존재하는지 체크
	err = isProject(projectName)
	if err:
		print err
		sys.exit(1)

	# 프로젝트 경로 생성
	err = addProject(projectName)
	if err:
		print err
		sys.exit(1)

