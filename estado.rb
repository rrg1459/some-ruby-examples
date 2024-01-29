require 'csv'
require 'open-uri'
require 'net/http'
require 'net/https'


heroku config:set OTRA=201.123.12.321 --app smschatven

hora_i1 = Time.now.strftime("%H:%M:%S,%L")

p "Inicio 1"
p "..................."
@onlinex = false
p "@onlinex:#{@onlinex}"
p "..................."

enlace = 'http://tiburcio.mypi.co'

url = enlace + '/estado'
p 'a - b'
    uri = URI(url)
    puts "..................."
    puts ".. Validando uri .."
    puts "..................."
    begin
        p "entro en el begin"
      Net::HTTP.start(uri.host, uri.port, :continue_timeout => 1) do |http|
#     Net::HTTP.start(uri.host, uri.port) do |http|
        p "entro en el NET"
        req = Net::HTTP::Get.new uri
        res = http.request req
        p url
        p uri
        p res.code
        xxx = res.code
        if xxx == '200'
#         url = ENV["HTTP_SMS"] + '/estado'
          csv_text = open("#{url}")
          estado = CSV.parse(csv_text, :col_sep=>'\t')
          puts "**----------------------------------**"
          puts "**----------------------------------**"
          puts "Gammu estado: #{estado.first}"
          puts "**----------------------------------**"
          puts "**----------------------------------**"
          @onlinex = true if estado.first == ["ActiveState=active"]
        else
          puts "#####################################"
          puts "##          error res.code         ##"
          puts xxx
          puts "#####################################"
          puts "#####################################"
        end
      end

      rescue StandardError, Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError,
             Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError => e
        puts "#####################################"
        puts "##          error http             ##"
        puts e
        puts "#####################################"
        puts "#####################################"
      end

hora_f1 = Time.now.strftime("%H:%M:%S,%L")

###
p ''
p "==="
p ''
###

hora_i2 = Time.now.strftime("%H:%M:%S,%L")


p "Inicio 2"
p "..................."
@onlinex = false
p "@onlinex:#{@onlinex}"
p "..................."

enlace = 'http://tiburcioy.mypi.co'

url = enlace + '/estado'
p 'a - b'
    uri = URI(url)
    puts "..................."
    puts ".. Validando uri .."
    puts "..................."
    begin
        p "entro en el begin"
      Net::HTTP.start(uri.host, uri.port, :continue_timeout => 50) do |http|
#     Net::HTTP.start(uri.host, uri.port) do |http|
        p "entro en el NET"
        req = Net::HTTP::Get.new uri
        res = http.request req
        p url
        p uri
        p res.code
        xxx = res.code
        if xxx == '200'
#         url = ENV["HTTP_SMS"] + '/estado'
          csv_text = open("#{url}")
          estado = CSV.parse(csv_text, :col_sep=>'\t')
          puts "**----------------------------------**"
          puts "**----------------------------------**"
          puts "Gammu estado: #{estado.first}"
          puts "**----------------------------------**"
          puts "**----------------------------------**"
          @onlinex = true if estado.first == ["ActiveState=active"]
        else
          puts "#####################################"
          puts "##          error res.code         ##"
          puts xxx
          puts "#####################################"
          puts "#####################################"
        end
      end

      rescue StandardError, Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError,
            Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError => e
        puts "#####################################"
        puts "##          error http             ##"
        puts e
        puts "#####################################"
        puts "#####################################"
      end

hora_f2 = Time.now.strftime("%H:%M:%S,%L")

###

puts "Hora Inicial 1: -->#{hora_i1}"
puts "Hora Final 1..: -->#{hora_f1}"

puts "Hora Inicial 2: -->#{hora_i2}"
puts "Hora Final 2..: -->#{hora_f2}"
