import requests
import json

from app import chatBot

url = 'http://192.168.1.6:5000/api'
def chatBot(self):
    r = requests.post(url,json=[chatBot(self)])
    print(r.json())
