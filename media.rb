require 'readline'
require 'byebug'

def input(prompt="", newline=false)
  prompt += "\n" if newline
  Readline.readline(prompt, true).squeeze(" ").strip
end

nums = []

while true
  num = input "Escribe un numero: "
  nums.push num.to_i
  print nums
  puts ''
  puts "El average del arreglo: #{nums} es: #{nums.sum/nums.size}"
end
