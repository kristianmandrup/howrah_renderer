module Howrah
  module Renderer 
    module Element
      class Base          
        attr_accessor :state

        # proxy messages such as prawn_command to Prawn::Commander instance
        proxy :commander

        def initialize state, commander
          @state     = state
          @commander = commander
        end
      end       
    end
  end
end