import requests 

url = 'http://127.0.0.1:8080/plot'


r = requestsget(url)

f = open('ej.png', 'wb')

f.write(r.content)
f.close