module Howrah
  module Renderer
    module Configuration
      def cell_tags
        styles :prawn do                
          dl  :margin => {:left => 10}, :styles => [:bold]
          lh  :margin => {:top => 6, :bottom => 6}, :styles => [:bold], :size => 14
          dt  :styles => [:italic], :size => 12
          li  :margin => {:left => 10}
          ol  :list_style => {:valid => :number, :default => :decimal }
          ul  :list_style => {:valid => :bullet, :default => :disc    }
        end
      end
    end
  end
end
