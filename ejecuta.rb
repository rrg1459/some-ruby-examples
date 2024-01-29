sms = "'Este mensaje se mandará cuando el bam esté nuevamente en línea.'"
tlf = '04141323326'
system "gammu-smsd-inject TEXT #{tlf} -unicode -text #{sms}"
puts "fin"
