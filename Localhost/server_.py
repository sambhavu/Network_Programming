import socket


host = '127.0.0.1'
port = 631

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((host,port))



server.listen(1)
conn, addr = server.accept()
print("[*]Accepted connection from: ", addr,)

while True:
    try:
    	server.listen(1)
    	data = conn.recv(1024)
	if data == '':
		break
    	print("[*]From connected user[*]", addr, ":", data)
    	resp = raw_input("?")
    	conn.send(resp)

    except:
	print("[*]closing connection")
	break

print("[*]closing server")
server.close()



