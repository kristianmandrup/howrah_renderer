module Howrah
  module Renderer
    module Element    
      class Image < Base

        # {:caption => 'my img', :src => 'my_img-png' }
        def initialize state, commander
          super
        end
        
        def render                        
          prawn_command(:image, uri, prawn_style) if uri
        end                         
      end
    end
  end
end