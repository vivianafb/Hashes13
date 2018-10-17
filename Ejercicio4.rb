personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]

#1 Se pide generar un hash con la información
 x = Hash[personas.zip(edades)]
p x

#Crear un método que reciba el hash y devuelva la edad del hash pasado como argumento.
def age(n)
  n.each do |a, b|
    p b
  end
end

age(x)
