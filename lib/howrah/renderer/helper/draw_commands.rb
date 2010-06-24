module Howrah
  module Renderer
    module DrawHelper
      # TODO: refactor these into some kind of helper?        
      def inline_text
        return if texts.empty? 
        prawn_command :formatted_text_box, [texts], options
        clear_texts
      end      

      def new_line                
        prawn_command :move_down, prawn_document.font_size
      end

      def empty_line                
        prawn_command :move_down, prawn_document.font_size*2
      end

      def black
        "000000"
      end        
    end
  end
end