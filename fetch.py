from lichv.utils import *
from lichv.postgresqldb import PostgresqlDBService
import os
import urllib
import time

db = PostgresqlDBService.instance(host='localhost', port=5432, user='postgres', passwd='123456', db='data')

host = 'http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2020/'
page = db.getOne('link',{'flag':False,'state':False})
while page :
	uri = page['name']
	db.modify('link',{'name':uri},{'state':True})
	html = getHtml(uri)

	if uri.endswith('/'):
		uri = uri +  'index.html'
	else:
		if not uri.endswith('.html'):
			uri = uri +  '.html'
	filename = '.'+uri[48:]
	filename = filename.replace('/','\\')
	print(filename)
	if not os.path.exists(filename):
		html = html.replace('<META content="text/html; charset=gb2312" http-equiv=Content-Type>','<META content="text/html; charset=utf-8" http-equiv=Content-Type>')
		write(filename,html)
	soup = BeautifulSoup(html,"html.parser")
	for link in soup.find_all('a'):
		href = link.get('href')
		text = link.text
		text = text.strip()
		new_full_url = urllib.parse.unquote(urllib.parse.urljoin(uri, href))
		if new_full_url.startswith(host):
			info = db.getOne('link',{'name':new_full_url})
			if not info:
				db.add('link',{'name':new_full_url,'label':text,'value':'','flag':False,'state':False})
	db.modify('link',{'name':uri},{'flag':True})
	page = db.getOne('link',{'flag':False,'state':False})

print('ok')