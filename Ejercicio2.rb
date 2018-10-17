productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

#1
productos.each { |producto, valor| p producto }

#2
productos['cereal'] = 2200
puts productos

#3
productos['bebida'] = 2000
puts productos

#4
producto_new =  productos.to_h.to_a
p producto_new

#5
productos.delete('galletas')
puts productos
