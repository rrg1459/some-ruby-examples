# gem install net-ping

require 'net/ping'

good = 'https://www.google.com/index.html'
bad  = 'http://www.noexiste111.com'

puts
puts Time.now.strftime("%H:%M:%S,%L")


puts "\n== Good ping, no redirect"
puts good
p1 = Net::Ping::HTTP.new(good)
puts Time.now.strftime("%H:%M:%S,%L")
puts "ping: #{p1.ping?}"
puts "warning: #{p1.warning}"
puts "exception: #{p1.exception}"

puts "\n== Good ping, no redirect,1,1"
puts good
p1 = Net::Ping::HTTP.new(good, 1, 1)
puts Time.now.strftime("%H:%M:%S,%L")
puts "ping: #{p1.ping?}"
puts "warning: #{p1.warning}"
puts "exception: #{p1.exception}"

puts "\n== Bad ping"
puts bad
p2 = Net::Ping::HTTP.new(bad)
puts Time.now.strftime("%H:%M:%S,%L")
puts "ping: #{p2.ping?}"
puts "warning: #{p2.warning}"
puts "exception: #{p2.exception}"

puts "\n== Bad ping,1,1"
puts bad
p2 = Net::Ping::HTTP.new(bad, 1, 1)
puts Time.now.strftime("%H:%M:%S,%L")
puts "ping: #{p2.ping?}"
puts "warning: #{p2.warning}"
puts "exception: #{p2.exception}"

puts "\n\nFin"
