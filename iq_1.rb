inicial = 8
total = 20
sumas = 0
restas = 0

puts "\n\n Inicial: #{inicial}\n\n"
total.times do |variable|
	accion = rand(-1..1)
	signo = '='
	if accion >= 1# 0
		# puts 'se multiplica'
		inicial *= 2
		signo = '+'
		sumas += 1
	# elsif accion <= -1# 0
	# 	# puts 'se divide'
	# 	inicial /= 2
	# 	signo = '-'
	# 	restas += 1
	end
	puts "#{variable+1} :#{signo}: #{inicial.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}"
end

puts "\n\n Sumas: #{sumas}\n Restas: #{restas} \n Sin accion: #{total - sumas - restas} \n Iteracciones: #{total} \n Total: #{inicial}"
