require 'howrah/renderer/list/renderer/item/renderer'
require 'howrah/renderer/list/renderer/item/type/ordered'
require 'type/unordered'
require 'type/definition'
renderer

module Howrah
  module Renderer  
    module Element    
      class List < Base   
          
        # TODO: How to transfer sub-list? 
        # Maybe list should be rendered per list item encountered, and not controlled/rendered by the containing list!

        # :items => [{:text => 'item 1'}, {:text => 'item 2'}, :list => {:items => ..., :list_type => :ordered}]
        def initialize state
          super
        end      
        
      end
    end
  end
end