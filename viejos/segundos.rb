
#nueva = @sms.f_vencimiento + (31*24*60*60)
#nueva = @sms.f_vencimiento + (29*24*60*60) if mes == "01" && dia == "30" 
#nueva = @sms.f_vencimiento + (28*24*60*60) if mes == "01" && dia == "31" 
#nueva = @sms.f_vencimiento + (30*24*60*60) if mes == "01" && dia == "29" || ((mes == "03" || mes == "05" || mes == "08" || mes == "10") && dia == "31") 

# Resta de dos fechas y resultados en años, meses y dias

# anno, mes dia
f1 = Time.mktime(1967, 8, 20)
f2 = Time.now

puts f1
puts f2

tiempo = f2.to_i - f1.to_i

puts "Tiempo en enteros: #{tiempo}"

if tiempo.between?(1, 3600)
  periodo = 'minutos: '
  resta = tiempo / 60
elsif tiempo.between?(3601,86400)
  periodo = 'horas: '
  resta = tiempo / 3600
elsif tiempo.between?(86401,2592000)
  periodo =  'dias: '
  resta = tiempo / 86400
elsif tiempo.between?(2592001,31536000) # se fijan los meses en 30 días arbritariamente
  periodo =  'meses: '
  resta = tiempo / 2592000
  dias = ( tiempo - ( 2592000 * resta ) ) / 86400
  if resta > 11 # ajuste por resta inexacta
    resta -= 1
    dias = 31 - dias
  end
elsif tiempo > 31536000
  periodo = 'años: '
  resta = tiempo / 31536000
  meses = ( tiempo - ( 31536000 * resta ) ) / 2592000
  dias = ( tiempo - ( ( 31536000 * resta ) + ( 2592000 * meses ) ) ) / 86400
end
puts "#{periodo}#{resta}"
puts "Meses: #{meses}" if meses
puts "dias: #{dias}" if dias
