inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}


opcion_ingresada = 0

puts "Ingrese su opcion "
puts "1.- Agregar item a inventario"
puts "2.- Elimnar item del inventario"
puts "3.- Actualizar un item del inventario"
puts "4.- Stock total del inventario"
puts "5.- Item con mayor stock"
puts "6.- Existe ___ en el inventario ?"
puts "7.- Salir"

opcion_ingresada = gets.chomp.to_s



while opcion_ingresada > "#{7}" ||  opcion_ingresada == "#{0}"
  puts "Ingrese otra opcion:  "
  opcion_ingresada = gets.chomp
end


if opcion_ingresada == "#{1}"
  puts "Que item quiere agregar?"
  new_obj = gets.chomp.to_sym
  puts "Stock:"
  new_cant = gets.chomp.to_i

  new_item = {
    new_obj => new_cant
  }

  inventario = inventario.merge(new_item)
  p inventario
end

if opcion_ingresada == "#{2}"
  puts "Que item quiere eliminar?"
  borrar = gets.chomp.to_s.to_sym.capitalize
  inventario.delete(borrar)
  puts inventario
end

if opcion_ingresada == "#{3}"
  puts "Que item quiere cambiar ? "
  palabra = gets.chomp.to_sym
  puts "Cuantos hay actualmente?"
  numeros =  gets.chomp.to_i
  t2 = {
   palabra => numeros
    }
  inventario_act = inventario.merge(t2)
  puts inventario_act
end

suma = 0
inven = inventario.values

if opcion_ingresada == "#{4}"
    inven.each do |x|
    suma = x + suma
    end
  puts "Stock total: #{suma}"
end

item = inventario.values
mayor = 0
e=2

if opcion_ingresada == "#{5}"
   if item[0] > item[1]
     mayor = item[0]
   elsif item[0] < item[1]
     mayor = item[1]
   end

 until e == item.length
    if item[e] > mayor
     mayor = item[e]
    elsif item[e] < mayor
     mayor = mayor
    end
      e += 1
    end
  puts "Item con mayor stock : #{inventario.key(mayor)}"
end

if opcion_ingresada == "#{6}"
  puts "Por que objeto desea consultar si hay stock ? "
  stock = gets.chomp.to_s.to_sym.capitalize

  if inventario.include?(stock)
    puts "Si hay stock"
  else
    puts "No hay stock"
  end
end

if opcion_ingresada == "#{7}"
  exit
end
