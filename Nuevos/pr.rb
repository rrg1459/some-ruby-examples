minutos_por_parte = rand(1..60)
puts
puts 'munitos: ' + minutos_por_parte.to_s
puts
seccionA = (1..15)
seccionB = (16..30)
seccionC = (31..45)
seccionD = (46..60)
seccionE = (61..75)
seccionF = (76..90)
puts '---------------'
puts seccionA
puts seccionB
puts seccionC
puts seccionD
puts seccionE
puts seccionF
puts '---------------'


a = minutos_por_parte == 30 ? Array.new(4,0) : Array.new(6,0)

10.times do
  min = rand(1..90)
  case min
    when seccionA
      a[0] += 1
    when seccionB
      a[1] += 1
    when seccionC
      a[2] += 1
    when seccionD
      a[3] += 1
    when seccionE
      a[4] += 1 if minutos_por_parte != 30
    when seccionF
      a[5] += 1 if minutos_por_parte != 30
  end
end

puts
puts '=========='
puts a
puts '=========='
puts


