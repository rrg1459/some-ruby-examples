require 'date'
f1 = Date.new(2019, 1, 20)
f2 = Date.new(2019, 6, 21)
f1 = Date.new(2019, 4, 29)
f2 = DateTime.now
a1 = f1.year
m1 = f1.month
d1 = f1.day
a2 = f2.year
m2 = f2.month
d2 = f2.day
annos = a2 - a1
annos -= 1 if m2 < m1
m2 += 12 if m2 < m1
m2 -= 1 if d2 < d1
meses = m2 - m1
if d2 < d1
	if a1 == 2012 || a1 == 2016 || a1 == 2020 || a1 == 2024
		d2 += 29 if m1 == 2
	else
		d2 += 28 if m1 == 2
	end
	d2 += 30 if m1 == 4 || m1 == 6 || m1 == 9 || m1 == 11
	d2 += 31 if m1 == 1 || m1 == 3 || m1 == 5 || m1 == 7 || m1 == 8 || m1 == 10 || m1 == 12
end
dias = d2 - d1
p '-------'
p "dias:#{dias}"
p "meses:#{meses}"
p "años:#{annos}"
p '-------'