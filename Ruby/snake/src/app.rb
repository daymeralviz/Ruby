require_relative "view/ruby2d"
require_relative "model/state"
require_relative "actions/actions"



class App

    def initialize
        @initial_state = Model::initial_state
    end 

    def start
        @view = View::Ruby2dView.new(self)      
        Thread.new{ init_timer(@view) }
        @view.start(@initial_state)
        @view.render_all(@initial_state)
    end    
 
    def init_timer(view)
       loop do
        
        @initial_state = Actions::move_snake(@initial_state)
        view.render_all(@initial_state)
        sleep 0.5
        # tigger movement
       end
    end    

    def send_action(action,params)
        @new_state =  Actions.send(action,@initial_state,params)
        if(@new_state.hash != @initial_state.hash)
            @initial_state = @new_state 
            @view.render(@initial_state)
        end     

    end    

end

app = App.new
app.start