module Howrah
  module Renderer
    class ListItem
      module Ordered      
        module Drawer
          def draw_decimal
            draw(level)          
          end               

          def draw_upper_roman
            level = NumberHelper::Roman.translate(level)
            draw(level)
          end       

          def draw_lower_alpha
            level = NumberHelper::Alpha.translate(level)
            draw(level)
          end       

          def draw_item
            bullet_text = send :"#{list_style}"
            bullet_options = {}
            box_options = {}          
            prawn_command :formatted_text_box, [{ :text => bullet_text}, bullet_options], box_options          
          end
        end
      end
    end
  end
end
