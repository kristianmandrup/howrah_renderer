module Howrah
  module Renderer
    module Element    
      class Anchor < Inline  
        
      # :caption => 'my img', :src => 'my_img-png'
      def initialize state
        super
      end      
      
      def tag
        'a'
      end      
      
      end
    end
  end
end