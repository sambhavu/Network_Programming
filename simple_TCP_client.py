import socket 

targert_host = "www.google.com" 
target_port = 80 

#create a socket object 
client= socket.socket(socket.AF_INET, socket.SOCK_STREAM) 

#connect the client to the host 
client.connect((target_host, target_port))

#send some data
client.send("GET  /HTTP/1.1\r\nHost:google.com\r\r\r\r")

#recieve some data
response = client.recv(4096)

print(response) 

