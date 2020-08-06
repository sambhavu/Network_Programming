import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
target_ip = input("[*]Enter Target IP: ")

def scanner(port):
    try:
        client.connect((target_ip, port))
        return True
    except:
        return False




def main():

    for portnumber in (1,100):
        print("[*]Scanning Port ", portnumber,"on IP: ", target_ip)
        if scanner(portnumber):
            print(portnumber, "is Open")
            
            
main()


            


