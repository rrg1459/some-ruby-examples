f_ing='/home/elorat/some-ruby-examples/ing'
f_esp='/home/elorat/some-ruby-examples/esp'
# https://www.youtube.com/watch?v=UFO2PfUj9CM

if File.file?(f_ing) && File.file?(f_esp)

  ing = File.read(f_ing).lines.map &:split
  esp = File.read(f_esp).lines.map &:split

  if ing.size == esp.size

    times = ing.size / 3

    puts "Inicio"
    puts "Procesando...\n"

    File.open('union.txt', "w") do |file|

      times.times do |i|

        a = i * 3 + 0
        b = i * 3 + 1
        c = i * 3 + 2

        file.puts ing[b][0][3..7]
        file.puts ing[c].join(' ')
        file.puts esp[c].join(' ')
        file.puts

      end
    end

    puts "Fin"

  else
    puts "los archivos no son iguales"
  end
else
  puts "NO existe el archivo #{f_ing} o el archivo #{f_esp} ERROR"
end
