# ciclos

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
 l = 13
for i in 1..l do 
    puts "hola #{i}" +":"+i.to_s;
end    

[1,2,3,4,5,6].each{|x| puts "hola #{x}" }

4.times {|x| puts "hola #{x}"}