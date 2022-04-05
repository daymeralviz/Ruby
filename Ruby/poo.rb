
=begin
class  Persona

    def self.suggested_names
       ['daymer','Juan','John']
    end    

    def initialize(name, age)
        @name = name
        @age = age
    end   
    
    def name
        @name
    end   
    
    def age
        @age
    end 
    
    def name=(name)
        @name = name
        self
    end
    
    def age=(age)
        @age = age
        self
    end
end



class  Persona
    attr_accessor :name, :age 

    def self.suggested_names
        ['daymer','Juan','John']
     end 

    def initialize(name, age)
        @name = name
        @age = age
    end  
end

=end 

class  Persona < Struct.new(:name,:age)


    def self.suggested_names
        ['daymer','Juan','John']
     end 

end

persona = Persona.new('Pedro',20)
puts persona.name
puts persona.age
puts Persona.suggested_names