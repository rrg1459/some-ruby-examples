a = []
cont = 0
limite = 21
for x in (1..limite)
	 	a [x] = x 
	#	a [x] = x if x < 16
end
for y in (0..4)
  n = y * 5
  break if a[n+1] == nil

  p " #{a[n+1]}, #{a[n+2]}, #{a[n+3]}, #{a[n+4]}, #{a[n+5]}"
p a[n+1]
 break if a[n+1] == nil
end
# a = [[1,2],[3,4]]
# cont = 0
# for x in (1..5)
# 	for y in (1..2)
# 		cont += 1
# 		a [x,y] = cont
# 		p x 
# 		p y
# #		p a
# 		p cont
# 		p a [x,y]
# 		p '--'
# 	end
# end
# p '*****'
# #p a [0,0]
# #p a [0,1]
# #p a [1,0]
# p a [1,1]
# p a [3,1]
# p a [4,1]
# p a [5,1]
# p a [5,2]


