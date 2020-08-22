import socket
host = '127.0.0.1'
port = 631


client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    client.connect((host,port))
    print(host, ", ", port, "     [*]Connection Established, (host,port)")

except:
    print("Connection Failed")
    print("END")
    exit(1)


starttrading = input("Enter 0 to begin data feed: ")

prices = []
while True:
    try:
        client.send('0')
        price = client.recv(1024)
        prices.append(price)
        print(price, ",r")


    except:
        break


client.close()
print("Connection Closed")

print("[*]Number of prices captured: ", len(prices))
print("End")




