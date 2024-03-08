puts 'holas'
temp = 4
segundos = 4
5.times do |x|
  # temp = rand(4..7)
  loop do
    segundos = rand(3..7)
    break if temp != segundos
  end
  temp = segundos
  puts segundos

end