require 'active_record'

puts 'hola'

# goles_partido, goles_acta, goles_registro

goles_partido    = ActiveModel::Type::Boolean.new.cast('false')
goles_acta       = ActiveModel::Type::Boolean.new.cast('true')
goles_registro   = ActiveModel::Type::Boolean.new.cast('false')



puts
puts "goles_partido  - goles_acta  - goles_registro"
puts "#{goles_partido} - #{goles_acta} - #{goles_registro}"
puts
if goles_partido && goles_acta && goles_registro
  puts 'los tres TRUE'
elsif  goles_partido &&  goles_acta && !goles_registro
  puts 'a = TRUE, b = TRUE, c = FALSE'
elsif  goles_partido && !goles_acta &&  goles_registro
  puts 'a = TRUE, b = FALSE, c = TRUE'
elsif !goles_partido &&  goles_acta &&  goles_registro
  puts 'a = FALSE = TRUE, c = TRUE'
elsif  goles_partido && !goles_acta && !goles_registro
  puts 'a = TRUE, b = FALSE, c = FALSE'
elsif !goles_partido &&  goles_acta && !goles_registro
  puts 'a = FALSE, b = TRUE, c = FALSE'
elsif !goles_partido && !goles_acta &&  goles_registro
  puts 'a = FALSE, b = FALSE, c = TRUE'
end
