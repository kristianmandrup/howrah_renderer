require 'howrah/renderer/table/drawer'

module Howrah
  module Renderer
    module Element    
      class Table < Base
        include Drawer
      
        def render
          draw_table
        end      
      end
    end
  end
end