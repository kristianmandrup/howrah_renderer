require 'howrah/renderer/table/drawer'

module Howrah
  module Renderer
    module Element    
      class Table < Base
        include Drawer

        # :caption => 'my table', :header => ['a', 'b'], :body => [['1', 'x'], ['2', 'y']], :footer => ['', 'xy']
        def initialize state
          super
        end
      
        def render
          draw_table
        end      
      end
    end
  end
end