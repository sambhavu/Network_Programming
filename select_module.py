import select
import socket
import time

PORT = 8037
TIME1970 = 2208988800

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(("",PORT))
server.listen(1)

print("[*]Listening on Port ", PORT)
while 1:
    is_readable = [server]
    is_writable = []
    is_error = []

    r, w, e = select.select(is_readable, is_writable, is_error, 1)

    if r:
        channel, info = server.accept()
        print("[*]Conenction From ", info)
        t = int(time.time()) + TIME1970
        t = chr(t>>24&225) + chr(t>>16&225) + chr(t>>8&225) + chr(t&225)
        channel.send(t) #send timestamp
        channel.close()

    else:
        print("[*]Still Waiting...")




