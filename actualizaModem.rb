require 'pg' 
require 'yaml'
archivo = '/home/elorat/sites/smschatven/config/variables_de_ambiente.yml'
if File.exists?(archivo)
    config = YAML.load_file(archivo)
    config.each do |ambiente,variable|
        if ambiente == 'production'
            @bd      = variable["BASE_DE_DATOS"].to_s
            @usuario = variable["DB_USUARIO"].to_s
            @clave   = variable["DB_CLAVE"].to_s
        end
    end
    archivo="/home/elorat/logs/archivos/texto_identify"
    @imsi = ''
    @imei = ''
    @dispositivo = ''
    if File.file?("#{archivo}") 
        File.read("#{archivo}")
        lineas = File.readlines("#{archivo}")
        lineas.each do |linea| 
            @imei = linea.split(" ")[2] if linea.split(" ")[0] == 'IMEI' 
            @imsi = linea.split(" ")[5] if linea.split(" ")[0] == 'IMSI' 
            @dazo = linea.split(" ")[2] if linea.split(" ")[0] == 'Dispositivo' 
            @dispositivo = @dazo.split("/")[2]
        end
        begin
            conecta=PG.connect(:hostaddr=>"127.0.0.1", :port=>5432, :dbname=>@bd, :user=>@usuario, :password=>@clave)
            res = conecta.exec("SELECT * FROM lineas where imei = '#{@imei}'") 
            if res.ntuples == 0
                conecta.exec("UPDATE lineas SET dispositivo = '- - -'")
                conecta.exec("INSERT INTO lineas (dispositivo, imei, imsi, created_at, updated_at) VALUES ('#{@dispositivo}', '#{@imei}', '#{@imsi}', '#{Time.now}', '#{Time.now}')")
                puts "Se agregó el modem imei: #{@imei}, con el puerto: #{@dispositivo} en la BD"
            elsif res.ntuples == 1
                conecta.exec("UPDATE lineas SET dispositivo = '- - -'")
                conecta.exec("UPDATE lineas SET dispositivo = '#{@dispositivo}', updated_at = '#{Time.now}' where imei = '#{@imei}'")
                puts "Se actualizó el modem imei: #{@imei}, con el puerto: #{@dispositivo} en la BD"
            else
                puts "hay mas de un registro con este imei: #{@imei} >>>NO se proceso ningun registro<<<"
            end
        rescue Exception => e
                puts e.message
        ensure
            conecta.close if conecta
        end
    else
        puts "NO existe el archivo_#{archivo} >>>ERROR<<<"
    end
else
    p 'Archivo YAML no existe'
end
