# Project Chatbot Notes

# Go to: https://webchat.freenode.net
# select unique nickname & channel for a solitary room

# make a connection to the IRC server using the TCPSocket class
require 'socket'
 
# declare variables to hold data for server, port, open connection 
server  = 'irc.freenode.net'
port    = 6667
socket  = TCPSocket.open(server, port)
 
nickname = 'MandalaM00n'
 
# write messages out onto the connection
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
 
# read from connection, print to screen
while message = socket.gets do
  puts message
end
