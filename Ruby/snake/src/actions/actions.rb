module Actions
   def self.move_snake(state)
       next_direction = state.next_direction
       next_position = calc_next_position(state)
      #  verificar que la siguiente casilla sea valida
      if posicion_is_valid?(state,next_position)
        move_snake_to(state,next_position)
      else 
        end_game(state)

      end  
      # sino es valida se ctermina el juego
      # si es valida se mueve la serpiente
   end 

   private 
   def calc_next_position(state)
      curr_position = state.snake.positions.first
      case state.next_direction
      when  UP 
          #decrementar fila 
          new_positions = Model::Coord.new(
            curr_position.row -1,
            curr_position.col)
         return new_positions   
      when   RIGHT 
         #incrementar  columna 
         new_positions = Model::Coord.new(
            curr_position.row ,
            curr_position.col +1)
         return new_positions   
      when   DOWN 
         #incrementar fila 
         new_positions = Model::Coord.new(
            curr_position.row +1,
            curr_position.col)
         return new_positions   
      when   LEFT
         #decrementar columna  
         new_positions = Model::Coord.new(
            curr_position.row   ,
            curr_position.col-1)
         return new_positions   
      end 
   end

   def posicion_is_valid?(state,position)
      #verificar que este en  el grid
     
      is_invalid = (( position.row > = state.grid.rows  || 
         position.row  <  0 ) ||
         ( position.col > = state.grid.cols  || 
         position.col  <  0 ) )

      return false is_invalid

         #verificar que no este sobre la serpiente
         
      return  !(state.snake.positions.include? position)

   end

   def move_snake_to(state,next_position)
      state.snake.positions

      
   end   

   def end_game(state)
   end 


end