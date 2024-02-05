require 'byebug'
puts 'hola'
# temp = 4
# segundos = 4
# 5.times do |x|
# 	# temp = rand(4..7)
# 	loop do
# 		segundos = rand(3..7)
# 		break if temp != segundos
# 	end
# 	temp = segundos
# 	puts segundos

# end

a = [
	{g: 1, c: 1},
	{g: 2, c: 2},
	{g: 3, c: 3},
	{g: 4, c: 4},
	{g: 5, c: 5},
	{g: 6, c: 6},
]
puts '----------'
puts a

# a[2][:g] = 0
# a[3][:g] = 0
# a[4][:g] = 0
a[2] = nil
a[3] = nil
a[4] = nil
a.compact!

puts '----------'
puts a
puts '----------'

# byebug
a.each.with_index(1) do |x, i|
	if x[:g] != 0
		puts x
		a[i-1] = nil
		# x[:g] = 0
		# x = nil
	end
end
a.compact!
puts
puts '=================0'

puts a