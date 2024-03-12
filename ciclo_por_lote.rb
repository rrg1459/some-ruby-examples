require 'byebug'
puts 'hola'


num = [*1..23]
print num
puts


# num = num.each_slice(4).to_a
# print num
# puts
# byebug
# num.each do |x|
ind = 0
num.each_slice(4) do |x|
		x.each do |y|
			ind += 1
			# puts y + 'indice: ' + ind
			puts "#{y}  -->  indice: #{ind}"
		end




		puts '...otro...'
end
puts
puts '=================0'

# puts a