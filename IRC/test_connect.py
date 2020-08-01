import irclib

#connection information

network = 'irc.freenode.net'
port = 6667
channel = '#irclib'
firstname = 'python'
lastname = 'test'

#create IRC object

irc = irclib.IRC() 
server = irc.server()
server.connect(network,port,firstname, ircname = lastname)
server.join(channel)

irc.process_forever()





