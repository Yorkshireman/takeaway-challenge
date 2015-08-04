class Sms
  def self.send
    print "What is your mobile number?\n"
    customer_number = gets.chomp

    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_TOKEN"]
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.messages.create(
      from: '+441768392015', 
      to: "#{customer_number}", 
      body: 'Thankyou! Your order was successfully placed and will be delivered within 1 hour.')
    
    puts "SMS order confirmation successfully sent"
  end
end