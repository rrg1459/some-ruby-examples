# require 'rubygems'
require 'twilio-ruby'

# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure
# account_sid = ENV['TWILIO_ACCOUNT_SID']
account_sid = "AC4538a8f1d614e75987e4583a242b1e80"
# auth_token = ENV['TWILIO_AUTH_TOKEN']
auth_token = "7620905c8e95fb6fd9f898f1fdefb726"
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages.create(
                             from: 'whatsapp:+14155238886',
                             body: 'Hello there rafa personal 2!',
                             to: 'whatsapp:+584165181317'
                           )

puts message.sid
puts message