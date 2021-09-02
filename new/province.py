import json
import requests
from lichv.utils import *
from lichv.postgresqldb import PostgresqlDBService
from lichv.mysqldb import MysqlDBService
from bs4 import BeautifulSoup

def getHtml(url,retry_count = 5):
    headers = {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
        "Cache-Control": "max-age=0",
        "Upgrade-Insecure-Requests": "1",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3", 
        "Accept-Encoding": "gzip, deflate, br",
        "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8"
    }
    while retry_count > 0:
        try:
            res = requests.get(url, headers=headers,timeout=10)
            if res.apparent_encoding.lower()=='gb2312':
                return res.text.encode("latin1").decode("gbk")
            else:
                res.encoding = res.apparent_encoding
                return res.text
        except Exception as e:
            print(e)
            retry_count -= 1
    return None

source = MysqlDBService(host='localhost', port=3306, user='root', passwd='123456', db='data')

url = 'http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2020/index.html'
html = getHtml(url)
filename = 'province.html'
# write(filename,html)

soup = BeautifulSoup(html,"html.parser")
table = soup.find("table", class_="provincetable")
print(table)
trs = table.find_all('tr',class_="provincetr")
for tr in trs:
	links = tr.find_all('a')
	for link in links:
		print(link)
		code = link.get('href')[0:-5]
		name = link.text
		data = {'code':code,'name':name,'link':link.get('href')}
		print(data)
		info = source.getOne('province',{'code':data['code']},'*',[('code',1)])
		if not info:
			source.add('province',data)
		else:
			source.modify('province',{'code':data['code']},data)
# items = source.query('select * from data where flag = 0 order by id asc')
# for item in items:
# 	print(item)
# 	source.modify('data',{'id':item['id']},{'flag':1})
# 	name = item['name']
# 	url = 'https://restapi.amap.com/v3/place/text?key=89df294c9e722519aef9f0a910e53bee&keywords='+name+'&types=090000|090100|090101|090102|090200|090201|090202|090203|090204|090205|090206|090207|090208|090209|090210|090211|090300|090400|090500|090600|090601|090602|090700|090701|090702&offset=20'
# 	res = getHtml(url)
# 	temp = json.loads(res)
# 	if temp:
# 		if temp['info'] == "OK":
# 			for el in temp['pois']:
# 				if 'id' in el:
# 					temp = source.getOne('point',{'id':el['id']})
# 					if not temp and 'address' in el :
# 						source.add('point',{"id": el['id'],"adcode": '', "address": el['address'], "adname": el['adname'], "citycode": '', "cityname": el['cityname'], "location": el['location'], "name": el['name'], "pcode": '', "pname": el['pname'], "type": el['type'], "typecode": el['typecode'], "flag": 0, "state": 0, "status": 0, })
# 			source.modify('data',{'id':item['id']},{'flag':2})
# 			res = json.dumps(temp)
# 			source.modify('data',{'id':item['id']},{'data':res,'flag':3})




print("ok")

