module Howrah
  module Renderer
    class Table
      module Drawer      
        def draw_table
          prawn_command :table, table_data, table_options do |prawn_table|
            draw_header(table) if table.header? 

            default_body_style(prawn_table)

            draw_footer(table) if table.footer? 
          end
        end

        def draw_header(table)
          prawn_command :row, 0 do |row|
            style = prawn_command :row, style 
            prawn_command :style, header_style
          end   
        end

        def draw_footer(table)      
          prawn_command :row, :last do |row|
            style = prawn_command :row, style 
            prawn_command :style, footer_style
          end
        end
      end
    end
  end
end