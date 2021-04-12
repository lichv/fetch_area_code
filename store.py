import os
from lichv.utils import *
from lichv.postgresqldb import PostgresqlDBService

def handle(db,filepath):
	items = []
	html = read(filepath)
	soup = BeautifulSoup(html,"html.parser")
	citytable = soup.find('table',class_="citytable")
	if citytable :
		trs = citytable.find_all('tr',class_="citytr")
		for tr in trs:
			tds = tr.find_all('td')
			item = {'code':tds[0].text,'label':tds[1].text,'type':''}
			print(item)
			items.append(item)


	countytable = soup.find('table',class_="countytable")
	if countytable :
		trs = countytable.find_all('tr',class_="countytr")
		for tr in trs:
			tds = tr.find_all('td')
			item = {'code':tds[0].text,'label':tds[1].text,'type':''}
			print(item)
			items.append(item)

	towntable = soup.find('table',class_="towntable")
	if towntable :
		trs = towntable.find_all('tr',class_="towntr")
		for tr in trs:
			tds = tr.find_all('td')
			item = {'code':tds[0].text,'label':tds[1].text,'type':''}
			print(item)
			items.append(item)

	villagetable = soup.find('table',class_="villagetable")
	if villagetable :
		trs = villagetable.find_all('tr',class_="villagetr")
		for tr in trs:
			tds = tr.find_all('td')
			item = {'code':tds[0].text,'label':tds[2].text,'type':tds[1].text}
			print(item)
			items.append(item)
	for item in items:
		info = db.getOne('zone',{'code':item['code'],'name':item['label']})
		if not info:
			db.add('zone',{'code':item['code'],'name':item['label'],'type':item['type']})


db = PostgresqlDBService.instance(host='localhost', port=5432, user='postgres', passwd='123456', db='data')
sources = '.'
if os.path.isdir(sources):
	for parent, dirnames, filenames in os.walk(sources, topdown=False,  followlinks=True):
		for filename in filenames:
			if filename.lower().endswith('.html'):
				filepath = os.path.join(parent,filename)
				print(filepath)
				handle(db,filepath)

print('ok')
