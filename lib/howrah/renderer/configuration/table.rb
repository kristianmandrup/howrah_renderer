module Howrah
  module Renderer
    module Configuration
      def table_tags   
        styles :prawn do 
          th :styles => [:bold]
          td :styles => [:normal]
          tf :styles => [:bold]          
          thead :style => :bold, :background_color => 'aaaaaa', :color => 'ffffff'
          tfoot :style => :bold, :background_color => 'aaaaaa', :color => 'ffffff'
        end
      end      

      # default style for tbody
      # use this convention :default_style_#{tag_name} if tag_name not found in tags!
      def default_style_tbody(table)
        table.row(:even).style(:background_color => 'cccccc', :color => 'ffffff')
      end       
    end
  end
end