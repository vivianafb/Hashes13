meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#1.- Generar un hash que contenga los meses como llave y las ventas como valor:
 x = Hash[meses.zip(ventas)]
 puts x

#2.- Invertir las llaves y los valores del hash.
z = x.invert
puts z

#3.- Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
num_mayor = 0
if ventas[0] > ventas[1]
  num_mayor = ventas[0]
elsif ventas[0] < ventas[1]
  num_mayor = ventas[1]
end

e = 2
while e != ventas.length
  if ventas[e] > num_mayor
    num_mayor = ventas[e]
  elsif ventas[e] < num_mayor
    num_mayor = num_mayor
  end
  e += 1
end
 puts num_mayor
