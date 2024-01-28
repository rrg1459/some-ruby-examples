class Moto

  def initialize(marca, color)
    # Atributos (variables del objeto)
    @marca = marca
    @color = color
  end

  def arrancar
    if (@estado_motor)
      puts 'Motor encendido'
    else
      @estado_motor = true
      puts 'Arrancando el motor'
      puts "marca: #{@marca}"
      puts "color: #{@color}"
    end
  end

end