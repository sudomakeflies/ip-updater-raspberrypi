#!/usr/bin/python
import time
import urllib2
from httplib2 import Http
from urllib import urlencode
#from daemon import runner

class ipUpdate():
    def __init__(self):
	self.server1 = "http://ip.42.pl/raw"
	self.h = Http()
	self.run()

    def run(self):
        while True:
            my_ip = urllib2.urlopen(self.server1).read()
            data = dict(ip=my_ip)
            resp, content = self.h.request("http://dbcaturra-hr.appspot.com/postip", "POST", urlencode(data))
            time.sleep(3600)

app = ipUpdate()
