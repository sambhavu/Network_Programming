import urllib.request
import urllib

fp = urllib.request.urlopen('http://www.google.com')
op = open("out.html" , 'wb')

n = 0

while 1:
    s = fp.read(8192)
    if not s:
        break

    op.write(s)
    n = n+ len(s)

fp.close()
op.close()


for k, v in fp.headers.items():
    print(k, " = ", v)
    print("copied ", n, " bytes from ", fp.url)
