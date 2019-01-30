#!/usr/bin/env python
#coding:utf8
import os
p = "/project/circle/in/"

for i in os.listdir(p):
	for j in os.listdir(p+"/"+i):
		for k in os.listdir(p+"/"+i+"/"+j):
			target = "/".join([p, i, j, k])
			result = "/".join([p, i, j, k.replace(".dpx",".jpg").replace(".exr",".jpg")])
			cmd = "convert %s -thumbnail 360x240 -background black -gravity center -extent 360x240 %s" % (target, result)
			print target
			print result
			print cmd
			os.system(cmd)
