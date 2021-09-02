import os
from lichv.utils import *;
sources = '.'
if os.path.isdir(sources):
	for parent, dirnames, filenames in os.walk(sources, topdown=False,  followlinks=True):
		for filename in filenames:
			if filename.lower().endswith('.html'):
				filepath = os.path.join(parent,filename)
				print(filepath)
				html = read(filepath)
				if '请开启JavaScript并刷新该页.' in html:
					os.remove(filepath)
				else:
					html = html.replace('<META content="text/html; charset=gb2312" http-equiv=Content-Type>','<META content="text/html; charset=utf-8" http-equiv=Content-Type>')
					write(filepath,html)

print('ok')
