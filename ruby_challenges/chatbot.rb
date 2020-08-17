# Project Chatbot Notes

# Go to: https://webchat.freenode.net
# select unique nickname & channel for a solitary room

# make a connection to the IRC server using the TCPSocket class
# TCPSocket represents a TCP/IP client socket.
require 'socket'
 
# declare variables to hold data for server, port, open connection 
server  = 'irc.freenode.net'
port    = 6667
socket  = TCPSocket.open(server, port)
 
nickname = 'MandalaM00n'
 
# write messages out onto the connection
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
 
# to send message, add this before your while loop
socket.puts "PRIVMSG #{channel} :I am so happy to be here!"

# read from connection, print to screen
while message = socket.gets do
  puts message
end

# ping pong with server
while message = socket.gets do
 
  puts message
  
  if message.match('^PING :')
  
    server = message.split(':').last
  
    puts "PONG #{server}"
  
    socket.puts "PONG #{server}"
  
  end
  
 end


# join a channel on IRC
 require 'socket'
 
server  = 'moon.freenode.net'
port    = 6667
socket = TCPSocket.open(server, port)
 
nickname = 'SkillcrushBotOMG'
channel  = '#BananaStand123'
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
 
while message = socket.gets do
  puts message
 
  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  end
end


# add extra branch to the if and check to see if the incoming message has our question:
#################################
require 'socket'
 
server  = 'moon.freenode.net'
port    = 6667
socket = TCPSocket.open(server, port)
 
nickname = 'SkillcrushBotOMG'
channel  = '#BananaStand123'
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
 
socket.puts "PRIVMSG #{channel} :I am so happy to be here!"
 
while message = socket.gets do
  puts message
 
  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  elsif message.match('How are you?')
    puts "PRIVMSG #{channel} :I'm great, thanks!"
    socket.puts "PRIVMSG #{channel} :I'm great, thanks!"
  end
end
################################