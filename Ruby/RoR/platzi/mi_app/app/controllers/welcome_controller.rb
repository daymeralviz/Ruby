class WelcomeController < ApplicationController
   def hello
      @variable = Pet.first.name
      @variable2 = Pet.first.breed 


   end 


end