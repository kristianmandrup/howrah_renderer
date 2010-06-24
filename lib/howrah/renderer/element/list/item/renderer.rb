require 'renderer/list/item/drawer/all'

module Howrah
  module Renderer
    class ListItem < Element  
      # include only if relevant for current list type     
      include Howrah::Render::List::Styles

      def initialize
        include_drawer
      end

      def create_drawer
        drawer = factory.create "Howrah::Render::ListItem::Drawer", list_style
      end

      # TODO: enable overrule of default
      def indentation
        default_indentation
      end        
                          
      def list_style
        parent_renderer.list_style
      end

      # list item should be drawn ASAP uswing text from children
      def render
        super 
        inc_level
        indent(indentation) do
           # draw item
           draw_item # use draw_item from included Drawer
           # draw text with current pdf_style of list
           with_pdf_style do |pdf_style|          
             prawn_command :formatted_text_box, text, pdf_style
           end                              
        end
        new_line
      end
      
      protected  
        def inc_level
          level.inc
        end
       
        def default_indentation
          20
        end      
      
        def draw_bullet(style)      
          if bullet_styles.include? style
            config_colors
            send :"draw_#{list_style.to_s}"
          else 
            draw_bullet(level)
          end
        end      
    end
  end
end