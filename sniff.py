from scapy.all import * 

def pack_callback(packet):
     print(packet.show) 

sniff(prn=packet_callback, count=1) 

