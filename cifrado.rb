require 'byebug'


frase = '#123'
frase = '¡uno! ¿dos? tres#.123'
frase = 'camino a casa'

puts
puts 'Mensaje descifrado: ' + frase
puts

arreglo = frase.split('')


num = frase.size

# fib = Array.new(num)
# fib = []
ascii= []
res = []
cifrado = []
descifrado = []
inicial = 236
clave = 'abcdefghij'
clave = '0123456789'
clave = 'ワドカウンタを表示x'

# abcdefghij
clave = "⚽🏀🏈⚾🥎🎾🏐🏉🥏🎱"
clave = "🤠😀🥸🤐🥳🤪🤯🥶🤢👹"

arreglo2 = []

frase.each_byte.with_index do |char, index|

  arreglo2.push char
  ascii[index] = char + inicial
end

frase.size.times do |index|
  res[index] = ascii[index] - inicial
  xx = ascii[index].to_s.split('').map(&:to_i)
  letter = "#{clave[xx[0]]}#{clave[xx[1]]}#{clave[xx[2]]}"
  cifrado.push letter
end

puts 'Clave inicial : ' + inicial.to_s
puts "Clave de salida : " + clave
puts
puts 'Mensaje cifrado: ' + cifrado.join()
puts