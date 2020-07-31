import socket

main(): 

  host = '127.0.01'
  port = 5001
  
  client = socket.socket(AF_INET, SOCK_STREAM) 
  client.connect((host,port)) 
  
  message = raw_input("?") 
  
  while message != 'q': 
    client.send(message.encode()) 
    data = client.recv(1024).decode() 
    print("[*]Received from Server ", data) 
    message = raw_input("?") 
    
  client.close() 
  
  
  
main()


  
