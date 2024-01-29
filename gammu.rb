@tlf='04141323326'
@sms='prueba de anvio 1 a las 6:35'
#configuracion="/etc/gammu-smsdrc-#{ENV["TTYUSB"]}"
configuracion="/etc/gammu-smsdrc-0"
puts "*******************************************"
puts "*****************************************11"
puts "TLF:#{@tlf}"
puts "SMS:#{@sms}"
puts "CNF:#{configuracion}"
system "gammu-smsd-inject -c #{configuracion} TEXT #{@tlf} -unicode -len 400 -text '#{@sms}'"
puts "*****************************************12"
puts "*******************************************"