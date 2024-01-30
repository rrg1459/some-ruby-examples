fondo = 100
dias = 30
iteracciones = 3
porcentaje = 0.01 # 3%
# meses = [['Enero',1],['Febrero',2],['Marzo',3],['Abril',4],['Mayo',5],['Junio',6],['Julio',7],['Agosto',8],['Septiembre', 9],['Octubre',10],['Noviembre',11],['Diciembre',12]]
# meses = {enero: {inversion: [],fondo: []},febrero: {inversion: [],fondo: []},marzo: {inversion: [],fondo: []},abril: {inversion: [],fondo: []},mayo: {inversion: [],fondo: []},junio: {inversion: [],fondo: []},julio: {inversion: [],fondo: []},agosto: {inversion: [],fondo: []},septiembre: {inversion: [],fondo: []},octubre: {inversion: [],fondo: []},noviembre: {inversion: [],fondo: []},diciembre: {inversion: [],fondo: []},}
meses = {
	enero:      {inversion: [],fondo: []},
	febrero:    {inversion: [],fondo: []},
	marzo:      {inversion: [],fondo: []},
	abril:      {inversion: [],fondo: []},
	mayo:       {inversion: [],fondo: []},
	junio:      {inversion: [],fondo: []},
	julio:      {inversion: [],fondo: []},
	agosto:     {inversion: [],fondo: []},
	septiembre: {inversion: [],fondo: []},
	octubre:    {inversion: [],fondo: []},
	noviembre:  {inversion: [],fondo: []},
	diciembre:  {inversion: [],fondo: []},
}

puts "\n\n Fondo inicial: #{fondo}\n\n"
	0.upto(11) do |mes|
		puts meses[mes]
	1.upto(30) do |dias|
		# puts "#{d+1} \t:#{fondo}:"
		inversion = []
		iteracciones.times do |i|
			inversion[i] = (fondo * porcentaje).to_i
		end
		fondo += (inversion.sum ).to_i
		print "#{dias}\t:#{inversion.sum.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}:\tFondo: #{fondo.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}"
		# iteracciones.times do |i|
			# print "\t:#{inversion}:"
		# end
		puts

	end
	puts "\n\n"
end

puts "\n\n Fondo final: #{fondo.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}\n\n"




	# print "1111123"
	# accion = rand(-1..1)
	# signo = '='
	# if accion >= 1# 0
		# puts 'se multiplica'
		# inicial *= 2
		# signo = '+'
		# sumas += 1
	# elsif accion <= -1# 0
	# 	# puts 'se divide'
	# 	inicial /= 2
	# 	signo = '-'
	# 	restas += 1
	# end
	# puts "#{variable+1} :#{signo}: #{inicial.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}"

# puts "\n\n Sumas: #{sumas}\n Restas: #{restas} \n Sin accion: #{total - sumas - restas} \n Iteracciones: #{total} \n Total: #{inicial}"
