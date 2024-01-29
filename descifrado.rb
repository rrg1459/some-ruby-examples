require 'byebug'

puts

ascii= []
res = []
cifrado = []
descifrado = []
inicial = 236
clave = 'abcdefghij'
clave = '0123456789'
clave = 'ワドカウンタを表示x'
clave = "🤠😀🥸🤐🥳🤪🤯🥶🤢👹"
clave = "⚽🏀🏈⚾🥎🎾🏐🏉🥏🎱"


mensaje = "⚾⚾🏉⚾🎾🏀⚾🎾🏈⚾🥎🏉🏈🏐🥏⚾⚾🏉⚾🎾🏀🏈🏐🥏⚾🥎🏉⚾🎾🏈⚾🎾⚽⚾⚾⚾🏈🏐🥏⚾🥎🥏⚾🎾⚽⚾🎾⚾⚾⚾🏉⚾⚾🥎⚾⚾⚾🏈🏐🥏⚾🥎🎾⚾⚽🏀⚾🏀🎱⚾🏀🎱⚾🏀🎱⚾🏀🎱⚾🏀🎱⚾🏀🎱⚾🏀🎱⚾⚽🏀⚾⚽🏀⚾⚾⚾⚾⚾⚾"

mensaje = "🥎⚾⚽⚾🎱🏉⚾🎾⚾⚾🥎🏐⚾🥎🏉🏈🏐🎱🏈🏐🥏🥎⚾⚽🥎🏈🏉⚾⚾🏐⚾🥎🏉⚾🎾🏀🏈🎱🎱🏈🏐🥏⚾🎾🏈⚾🎾⚽⚾⚾🏉⚾🎾🏀🏈🏉🏀🏈🥏🏈🏈🥏🎾"

mensaje = "🥎⚾⚽⚾🎱🏉⚾🎾⚾⚾🥎🏐⚾🥎🏉🏈🏐🎱🏈🏐🥏🥎⚾⚽🥎🏈🏉⚾⚾🏐⚾🥎🏉⚾🎾🏀🏈🎱🎱🏈🏐🥏⚾🎾🏈⚾🎾⚽⚾⚾🏉⚾🎾🏀🏈🏉🏀🏈🥏🏈🏈🥏🎾"

mensaje = "⚾⚾🎾⚾⚾⚾⚾🥎🎾⚾🥎🏀⚾🥎🏐⚾🥎🏉🏈🏐🥏⚾⚾⚾🏈🏐🥏⚾⚾🎾⚾⚾⚾⚾🎾🏀⚾⚾⚾"

letra = []
mensaje.split('').each do |x|
  letra.push x
  if letra.size == 3
    cifrado.push letra.join()
    letra = []
  end
end

puts 'Clave inicial : ' + inicial.to_s
puts "Clave de entrada : " + clave
puts
print "Mensaje cifrado:: "

cifrado.each do |letra_cifrada|
  print letra_cifrada
  xx = letra_cifrada.split('')
  letra = ("#{clave.index(xx[0])}#{clave.index(xx[1])}#{clave.index(xx[2])}".to_i) - inicial
  descifrado.push letra.chr
end

puts
puts
puts "Mensaje descifrado: " + descifrado.join()
puts
