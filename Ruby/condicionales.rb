# condicionales

is_authenticated = true

role = :superadmin 

puts role

if role == :admin 
    puts "pantalla de admin" 
elsif role == :superadmin
    puts "pantalla de superadmin"
else 
    puts "pantalla de login"

end    