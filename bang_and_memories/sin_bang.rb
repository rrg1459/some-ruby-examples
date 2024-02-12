data = Array.new(10) { 'x' * 1024 * 1024 }

GC.start
# Garbage collection (GC) para limpiar la memoria

memory_before = %x[ps -o rss= -p #{Process.pid}].to_i/1024

data.map(&:upcase)

memory_after = %x[ps -o rss= -p #{Process.pid}].to_i/1024

total_memory = memory_after - memory_before

puts 'upcase: %d MB' % (total_memory)
puts "#{total_memory > 0 ? 'Si' : 'No'} crea un #{total_memory > 0 ? 'nuevo' : ''} objeto"
puts "Crea #{total_memory} MB de nuevas instancias"