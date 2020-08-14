# Alternate version of magic-8-ball in Ruby

require 'rubygems'
require 'twilio-ruby'

puts "Ask a Yes or No question."
$stdout.flush
question = gets

answers = ["It is certain.","It is decidedly so.","Without a doubt.","Yes – definitely.","You may rely on it.","As I see it, yes.","Most likely.","Outlook good.","Yes.","Signs point to yes."," Reply hazy, try again.","Ask again later.","Better not tell you now.","Cannot predict now.","Concentrate and ask again.","Don't count on it.","My reply is no.","My sources say no.","Outlook not so good.","Very doubtful."]

# connect to the Twilio API using the account SID and auth token on your Twilio dashboard
account_sid = "xxxxx"
auth_token = "xxxxx"

@client = Twilio::REST::Client.new(account_sid, auth_token)

# text the message
message = @client.api.account.messages.create(
    :from => "your Twilio number",
    :to =>"your own number",
    :body => "#{question}...\n #{answers.sample}"
)

puts message.to
