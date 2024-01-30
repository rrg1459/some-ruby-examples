require 'byebug'

fondo = 100
dias = 30
iteracciones = 3
porcentaje = 0.01 # 3% de inversion por transaccion
ganancia = 0.7 # 70% de ganancia por transaccion

meses = {
  enero:      {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  febrero:    {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  marzo:      {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  abril:      {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  mayo:       {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  junio:      {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  julio:      {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  agosto:     {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  septiembre: {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  octubre:    {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  noviembre:  {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
  diciembre:  {ganadas:[], perdidas: [], empatadas: [], inversion: [],fondo: []},
}

puts "\n\n Fondo inicial: #{fondo}\n\n"

meses.each do |mes|
  30.times do |dias|
    mes.last[:inversion][dias] = []
    mes.last[:ganadas][dias] = 0
    mes.last[:perdidas][dias] = 0
    mes.last[:empatadas][dias] = 0
    iteracciones.times do |itera|

      # accion = rand(-1..1)
      # if accion >= 1
        mes.last[:ganadas][dias] += 1
        mes.last[:inversion][dias][itera] = ((fondo * porcentaje) * ganancia).round
      # elsif accion <= -1
        # mes.last[:perdidas][dias] += 1
        # mes.last[:inversion][dias][itera] = (fondo * porcentaje) * (-1)
      # else
        # mes.last[:empatadas][dias] += 1
        # mes.last[:inversion][dias][itera] = 0
      # end

    end
    fondo += (mes.last[:inversion][dias].sum).to_i
    mes.last[:fondo][dias] = fondo
    # print "#{dias}\t:#{mes.last[:inversion][dias].sum.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}:\tFondo: #{fondo.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}"
    # puts
  end
end

# byebug

30.times do |dias|
  # puts "#{d+1} \t:#{fondo}:"
  # mes.last[:inversion][dias] = []
  # inversion = []
  # iteracciones.times do |i|
    # mes.last[:inversion][dias][i] = (fondo * porcentaje).to_i # se conveirte a entero para que redondee por el entero mas proximo de abajo
    # inversion[i] = (fondo * porcentaje).to_i
  # end
  # fondo += (mes.last[:inversion][dias].sum)
  # mes.last[:fondo][dias] = fondo

  # print "#{dias}\t:#{mes.last[:inversion][dias].sum.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}:\tFondo: #{fondo.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse}"


  print "#{dias+1}  "
  # print ":#{meses[:enero][:ganadas][dias]}"
  # print ":#{meses[:enero][:perdidas][dias]}"
  # print ":#{meses[:enero][:empatadas][dias]}:"
  # print " - #{meses[:enero][:inversion][dias]}"
  print " - #{meses[:enero][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  # print ":#{meses[:febrero][:ganadas][dias]}"
  # print ":#{meses[:febrero][:perdidas][dias]}"
  # print ":#{meses[:febrero][:empatadas][dias]}:"
  # print " - #{meses[:febrero][:inversion][dias]}"
  print " - #{meses[:febrero][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  # print ":#{meses[:marzo][:ganadas][dias]}"
  # print ":#{meses[:marzo][:perdidas][dias]}"
  # print ":#{meses[:marzo][:empatadas][dias]}:"
  # print " - #{meses[:marzo][:inversion][dias]}"
  print " - #{meses[:marzo][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  # print ":#{meses[:abril][:ganadas][dias]}"
  # print ":#{meses[:abril][:perdidas][dias]}"
  # print ":#{meses[:abril][:empatadas][dias]}:"
  # print " - #{meses[:abril][:inversion][dias]}"
  print " - #{meses[:abril][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  # print ":#{meses[:mayo][:ganadas][dias]}"
  # print ":#{meses[:mayo][:perdidas][dias]}"
  # print ":#{meses[:mayo][:empatadas][dias]}:"
  # print " - #{meses[:mayo][:inversion][dias]}"
  print " - #{meses[:mayo][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  # print ":#{meses[:junio][:ganadas][dias]}"
  # print ":#{meses[:junio][:perdidas][dias]}"
  # print ":#{meses[:junio][:empatadas][dias]}:"
  # print " - #{meses[:junio][:inversion][dias]}"
  print " - #{meses[:junio][:fondo][dias].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1.').reverse} "

  puts 

  # iteracciones.times do |i|
    # print "\t:#{inversion}:"
  # end
  puts

end
puts "\n\n"

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
