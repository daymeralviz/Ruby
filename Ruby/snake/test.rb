
require "byebug"

class Calculator
   def sum(a,b)
      a+b
   end
   def substract(a,b)
       a-b
   end 
end      

calcu = Calculator.new


#puts calcu.sum(4,6)
#puts calcu.substract(10,3)

test = {
    [1,2] => 3,
    [5,6] =>11,
    [100,1] =>101
}

test.each do |input, expect_result|
    #byebug
    if calcu.sum(input[0],input[1]) != expect_result 
       raise "test failed for input #{input}. expecte result #{expect_result}"
    else 
        puts "prueba ok #{input}. expect result #{expect_result}"
    end    
end