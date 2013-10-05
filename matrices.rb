#!/usr/bin/ruby

puts "\n\n*******************************************************\n"
puts "* Practica 4 - Lenguajes y Paradigmas de Programacion *\n"
puts "* > Suma y multiplicacion de dos matrices cuadradas < *\n"
puts "*                    Jose Alexander Delgado Hernandez *\n"
puts "*                                   Sem Ramos Herrera *\n"
puts "*******************************************************\n"

# Inicializacion de la matriz A
a = [[6, 1, 3, 2],
     [4, 3, 1, 3],
     [7, 2, 1, 5],
     [5, 3, 7, 9]]

# Inicializacion de la matriz B
b = [[2, 2, 3, 5],
     [4, 3, 4, 6],
     [2, 5, 9, 8],
     [9, 8, 7, 6]]

m = Array.new(4){Array.new(4)}
s = Array.new(4){Array.new(4)}

# Suma de matrices
for i in (0...4)
	for j in (0..3)
		s[i][j] = a[i][j] + b[i][j]
	end
end

# Suma de matrices
for i in (0..3) 
	for j in (0...4)
		temp = 0
		for k in (0..3)
			temp += a[i][k] * b[k][j]
		end
		m[i][j] = temp
	end
end

puts "\n Matriz A:\n"
for i in (0...4)
	print " "
	for j in (0..3)
		print a[i][j]
		print "	"
	end
	puts "\n"
end

puts "\n Matriz B:\n"
for i in (0...4)
	print " "
	for j in (0..3)
		print b[i][j]
		print "	"
	end
	puts "\n"
end

puts "\n Suma:\n"
for i in (0...4)
	print " "
	for j in (0..3)
		print s[i][j]
		print "	"
	end
	puts "\n"
end

puts "\n Multiplicacion:\n"
for i in (0...4)
	print " "
	for j in (0..3)
		print m[i][j]
		print "	"
	end
	puts "\n"
end
