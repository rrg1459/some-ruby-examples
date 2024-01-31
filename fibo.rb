# Fibonacci con memoizacion
# https://es.wikipedia.org/wiki/Memoizaci%C3%B3n

# gem install benchmark
require 'benchmark'

# # forma 1
@fibonacci_cache = {}

def fibonacci1(n)
  return n if n <= 1

  # Si ya hemos calculado el número, devolvemos el resultado almacenado
  return @fibonacci_cache[n] if @fibonacci_cache[n]

  # Si no, calculamos el número y lo almacenamos en caché
  result = fibonacci1(n-1) + fibonacci1(n-2)
  @fibonacci_cache[n] = result

  return result
end

# forma 2
@cache = {}

def fibonacci2(n)
  if n < 2
    n
  elsif @cache[n]
    @cache[n]
  else
    @cache[n] = fibonacci2(n - 1) + fibonacci2(n - 2)
  end
end

# Ejemplo de uso
puts "\nMethod 1"
time1 = Benchmark.measure do
  puts "fibonacci de: 6 es #{fibonacci1(6)}" # Output: 8
  puts "fibonacci de: 10 es #{fibonacci1(10)}" # Output: 55
  puts "fibonacci de: 15 es #{fibonacci1(15)}" # Output: 610
  puts "fibonacci de: 150 es #{fibonacci1(150)}" # Output: 9969216677189303386214405760200
  puts "fibonacci de: 1500 es #{fibonacci1(1500)}" # Output: 13551125668563101951636936867148408377786010712418497242133543153221487310873528750612259354035717265300373778814347320257699257082356550045349914102924249595997483982228699287527241931811325095099642447621242200209254439920196960465321438498305345893378932585393381539093549479296194800838145996187122583354898000
end

puts "\nMethod 2"
time2 = Benchmark.measure do
  puts "fibonacci de: 6 es #{fibonacci2(6)}" # Output: 8
  puts "fibonacci de: 10 es #{fibonacci2(10)}" # Output: 55
  puts "fibonacci de: 15 es #{fibonacci2(15)}" # Output: 610
  puts "fibonacci de: 150 es #{fibonacci2(150)}" # Output: 9969216677189303386214405760200
  puts "fibonacci de: 1500 es #{fibonacci2(1500)}" # Output: 13551125668563101951636936867148408377786010712418497242133543153221487310873528750612259354035717265300373778814347320257699257082356550045349914102924249595997483982228699287527241931811325095099642447621242200209254439920196960465321438498305345893378932585393381539093549479296194800838145996187122583354898000
end

puts "\nTime benchmark 1: #{time1.real}"
puts "\nTime benchmark 2: #{time2.real}"
