require 'open3'

p Time.now

sms = "'mensaje en curso desde proceso.rb a las 14:37'"
tlf = '04141323326'

str, out1 = Open3.capture2("ps -ef|grep gammu-smsdrc-")
arriba = str.include? "/etc/gammu-smsdrc-"
if arriba
  p str
  pica1 = str.split("\n")[0]
  pica2 = pica1.split("/")[3]
  str2 = pica2.split("-")[2]
  str3 = str.split("\n")[0].split("/")[2].split("-")[2] # es lo mismo que las dos lineas anteriores pero se deja para referencias
  puts "--------------------2.1"
#	p str2
#	puts "--------------------2.2"
  p pica1
  p pica2
  p str2
  p str3
  puts "--------------------2.3"
else
  p "abajo es"
end

p Time.now
