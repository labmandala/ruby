# Twilio Ruby Magic 8-ball script

require 'rubygems'
require 'twilio-ruby'

# connect to the Twilio API using the account SID and auth token on your Twilio dashboard
account_sid = "xxxxx"
auth_token = "xxxxx"

@client = Twilio::REST::Client.new(account_sid, auth_token)

# text yourself a message
message = @client.api.account.messages.create(
    :from => "+your Twilio number", 
    :to =>"+your own number", 
    :body => "Haaaii!"
  )
   
puts message.to

