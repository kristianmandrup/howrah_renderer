module Howrah
  module Renderer 
    module Element
      class Base  
        
        attr_accessor :state

        def initialize state
          @state = state
        end
        
        def text
          state[:text]
        end

        # TODO: generalize into Inline
        def format_text
          "<#{tag}>#{text}</#{tag}>"
        end
        
      end       
    end
  end
end
