module Howrah
  module Renderer
    module Element    
      class Image < Base
        def render                        
          prawn_command(:image, uri, prawn_style) if uri
        end                         
      end
    end
  end
end