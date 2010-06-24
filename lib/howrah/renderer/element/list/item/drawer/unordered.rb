module Howrah
  module Renderer
    class ListItem
      module Drawer      
        module Unordered
          def item_color
            fill_color = current_style[:fill_color] || black
            stroke_color = current_style[:color] || black          
            {:stroke => stroke_color, :fill => fill_color}
          end

          def config_colors
            prawn_command :fill_color, item_color[:fill]    
            prawn_command :stroke_color, item_color[:stroke]
          end
        
          def draw_circle
            prawn_command :stroke_circle_at, [0,0], :radius => bullet_radius
          end       

          def draw_disc          
            prawn_command :fill_circle_at, [0, 0], :radius => bullet_radius
          end       

          def draw_square
            prawn_command :stroke_rectangle, [0,0], bullet_radius, bullet_radius
          end               
        end
      end
    end
  end
end
