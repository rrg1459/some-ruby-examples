cedula = $*[0]

#string.include?("EDO. ")
#string.include?("CE. ")
#string.include?("PQ. ")
#string.start_with? "ruby"
#string.gsub("dogs", "cats")

if cedula
  require 'open-uri'
  require 'nokogiri'
  require 'sanitize'
  require 'byebug'

  url = "http://www.cne.gov.ve/web/registro_electoral/ce.php?nacionalidad=V&cedula=#{cedula}"
  doc = Nokogiri.HTML(open(url))
  inline_script = doc.xpath('//tr')

  inline_script.each do |script|

    linea = Sanitize.fragment(script.text).gsub(/\t|\n/,"")

    if /dula/ =~ linea
      @cedula = linea.split(':')[1]
    elsif /FALLECIDO/ =~ linea
      @fallecido = true
    elsif /ombre/ =~ linea
      @nombre = linea.split(':')[1]
    elsif /stado/ =~ linea
      @estado = linea.split(':')[1]
    elsif /cipio/ =~ linea
      @municipio = linea.split(':')[1]
    elsif /quia:/ =~ linea
      @parroquia = linea.split(':')[1]
    elsif /entro/ =~ linea
      @centro = linea.split(':')[1]
    end
  end

  if @fallecido
    p "Elector fallecido"
  else
    if @cedula
      @estado    = @estado.gsub('EDO. ', '')
      @municipio = @municipio.gsub('CE. ', '')
      @parroquia = @parroquia.gsub('PQ. ', '')
      p "Cédula...:#{@cedula}"
      p "Nombre...:#{@nombre}"
      p "Estado...:#{@estado}"
      p "Municipio:#{@municipio}"
      p "Parroquia:#{@parroquia}"
      p "Centro...:#{@centro}"
    else
      p "No existe este elector en el cne"
    end
  end
else
  p "no se ejecuto nada, no hay parametro de cedula"
end