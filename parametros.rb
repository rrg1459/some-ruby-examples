def arg_opc(a,b,*x)
  begin
    puts 'a ' + a
    puts 'b ' + b
    puts x if x.size > 0
  end

end

arg_opc('1','2','3',4,"a",6)
arg_opc('1','2')
