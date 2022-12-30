import os
AppVer = '3'
hnt = os.popen('hostname')
hn = hnt.read()
IPt =  os.popen('hostname -I')
IP  = IPt.read()

html = f'<html> This is app version {AppVer} <ul> <li> Server`s host name is {hn} </li> <li> IP address is {IP} </li></ul></html>'
#f = open("./subfiles/index.html", "w")
f = open("/usr/local/apache2/htdocs/index.html", "w")
f.write(html)
