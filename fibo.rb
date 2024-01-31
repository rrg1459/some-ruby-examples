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
puts fibonacci1(6) # Output: 8
puts fibonacci1(10) # Output: 55
puts fibonacci1(15) # Output: 610
puts fibonacci1(1500) # Output: 610

puts fibonacci2(6) # Output: 8
puts fibonacci2(10) # Output: 55
puts fibonacci2(15) # Output: 610
puts fibonacci2(1500) # Output: 610
