
archivo='/home/ubuntu/some-ruby-examples/fichero'

if File.file?("#{archivo}") 
  puts 'Si existe'  
  File.open("#{archivo}", 'r')  do |f|
    linea = f.gets
  #	if Integer === linea
    #numero1=linea.to_i
    bool = Integer(linea) rescue false
  #	end
    if bool
      numero=linea.to_i # logica para madnar sms
      puts numero
    else
      puts 'NO es un numero ERROR'
    end
  end
else
  puts "NO existe el archivo_#{archivo} ERROR"
end
