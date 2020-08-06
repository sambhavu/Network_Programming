#!/usr/bin

import socket
import os
host = '127.0.0.1'
port = 631

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((host,port))
print("Connected to Host")


while True:

    msg = raw_input("?")
    if msg == 'q': 
        break 
        
    client.send(msg)
    
    resp = client.recv(1024)

    print("[*]Server Resp[*]", resp)


client.close() 




