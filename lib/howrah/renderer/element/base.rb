module Howrah
  module Renderer 
    module Element
      class Base  
        
        attr_accessor :state

        def initialize state
          @state = state
        end
      end       
    end
  end
end