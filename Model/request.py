import requests
import json

url = 'http://0.0.0.0:5000/api/'

data = [[]]
j_data = json.dumps(data)

headers = {'content-type': 'application/json','Accept-charset': 'UTF-8'}

r = requests.post(url, data=j_data, headers=headers)
print(r,r.text)