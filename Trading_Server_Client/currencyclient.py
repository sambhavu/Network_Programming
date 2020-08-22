
import socket
import time
host = '127.0.0.1'
port = 631

def get_position(prices):
    
    try: 
        t = prices[-1]
        t1 = prices[-2]
        t2 = prices[-3]
        
        p1 = (t1 - t2)/t2
        p2 = (t - t1)/t1
        
        perc_change = (p2 - p1)/p1
        
        
        if p1 < 0 and p2 < 0 and perc_change > 0:
            return 1000
        elif p1 > 0 and p2 > 0 and perc_change < 0:
            return -1000
        else:
            return 0
        
        
    except:
        return 0




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

position = 0
usdmxn = 0
profit = 0
totalprofit = 0
aum = []



while True:

    try:
        position = get_position(prices)
    
    
        client.send('0')
        price_string = client.recv(1024)
        price = float(price_string)
    
        prices.append(float(price_string))
    
    
        try: 
            profit = position*(prices[-1] - prices[-2])
            totalprofit = totalprofit + profit
            aum.append(totalprofit)
        
            print("IN @ ", prices[-2], "OUT @ ", prices[-1], "Shares: ", position, "Profit: ", profit, "AUM: ", aum[-1])
            
        except: 
            pass
    
        profit = 0
        position = 0
    
    except:
        break


client.close()
print("Connection Closed")

print("[*]Number of prices captured: ", len(prices))
print("End")




