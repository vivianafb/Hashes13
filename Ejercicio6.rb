restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

w = restaurant_menu.to_h.to_a
p w

#1. Obtener el plato mas caro.
x = 0
num_mayor = 0
if w[0][1] > w[1][1]
  num_mayor = w[0][1]
  x = 0
elsif w[0][1] < w[1][1]
  num_mayor = w[1][1]
  x = 1
end

e = 2
while e != w.length
  if w[e][1] > num_mayor
    num_mayor = w[e][1]
    x = e
  elsif w[e][1] < num_mayor
    num_mayor = num_mayor
  end
  e += 1
end
 p w[x][0]

#2. Obtener el plato mas barato.
 z = 0
 num_menor = 0
 if w[0][1] < w[1][1]
   num_menor = w[0][1]
   z = 0
 elsif w[0][1] > w[1][1]
   num_menor = w[1][1]
   z = 1
 end

 e = 2
 while e != w.length
   if w[e][1] < num_menor
     num_menor = w[e][1]
     z = e
   elsif w[e][1] > num_menor
     num_menor = num_menor
   end
   e += 1
 end
  p w[z][0]

#3. Sacar el promedio del valor de los platos
 sum = 0
 w.each do |p, v|
   sum += v
 end
p sum/w.length

#4. Crear un arreglo con solo los nombres de los platos.

p w.map {|p, f| p}

#5.- Crear un arreglo con solo los valores de los platos.

p w.map {|p, f| f}

#6.-Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
menu = restaurant_menu.map{|p, f| f*1.19 }
menu1 = restaurant_menu.map{|p,f| p}

menu2 = menu1.zip(menu)
puts menu2.to_h

#7.- Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra

menu1.each do |numero|
  t = numero.split
  p t
end
