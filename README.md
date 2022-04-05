# Ruby
Study Ruby and Rails

Ruby general 

https://platzi.com/clases/1441-ruby/15863-bienvenida-e-introduccion2876/
Simon Soriano

Ruby lenguajes
 tipo hash   => -- -- operador llamado roquet

capitales= {'Peru' => 'Lima', 'Chile' => 'Santiago de Chile', 'España' => 'Madrid', 'Argentina' => 'Buenos aires', 'Paises Bajos' => 'Amsterdan', 'Estados Unidos' => 'Washington'}

Arrays:

letras = [“q”,“w”,“e”]

letras.size = indica el tamaño del array

letras.class = indica el tipo de la clase

letras[n] = indica el lugar del objeto

letras.include? “q”

[1,2,3,4,5].map { |x| x**2}

Hash:

capitales = { “Colombia” => “Bogota” }

podemos hacer lo siguiente :

capitales[“Bolivia”] = “La paz”

capitales = { “Colombia” => “Bogota” , “Bolivia” => “La paz” }

capitales.transforn_values { |x| x.downcase } = esto sirve para transformar todo los valores de un hash a minuscula

Ahora…

capitales.map { |k,v| “La capital de #{k}es #{v}”}

metodo merge :

capitales.merge { “Marte” => “Bus” }

agrega el hash al método merge

PARA cambiar array a hash:

[[“pepito”,13] , [“sutanito”,14]].to_h
condiciones

# condicionales

is_authenticated = false

if is_authenticated
    puts "pantalla de admin" 
else
    puts "pantalla de login"

end    

ciclos 
x = 1 
while   x <= 10 do

    puts "hola #{x}" +":"+x.to_s;
    x = x + 1 
end   

x = 1 
loop do 
    puts "hola #{x}"
    x+=1
    break if x>=5
    
end 

rangos o range - para iteraciones 
(1..6)

=> 1..6
irb(main):002:0> (1..6).class
=> Range
irb(main):003:0> (1..6).to_a
=> [1, 2, 3, 4, 5, 6]
irb(main):004:0> (1...6).to_a
=> [1, 2, 3, 4, 5]

regex - expreciones regulares

is_gmail_regex = /\w+@gmail.com/


irb(main):014:0> "simon@gmail.com".match is_gmail_regex
=> #<MatchData "simon@gmail.com">


- lambdas y procs: clase especial que hace referencia a un mètodo
lamddas para programacion funcional 

saludar =  Proc.new {|nombre| puts "hola #{nombre}"}

irb(main):024:0> saludar.class
=> Proc
irb(main):025:0> saludar.call("daymer")
hola daymer
=> nil
irb(main):026:0> 

- programacion orientada a objeto 

metodos de la instancia == metodos publicos 
metodos de la clase ==  metodo estatico

metaprogramacion -- varias macros de codigo para codificar menos -- attr_accessor 
       - Struct.new(:name,:age)

 Modular el codigo  = alta coheciòn - namespace 

booder y gemas 
