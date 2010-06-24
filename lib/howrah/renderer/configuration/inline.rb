module Howrah
  module Renderer
    module Configuration
      def block_tags
        styles :prawn, :inline => true do
          # these tags will be output using Prawn inline_format, fx <b>hello</b> => {:text => '<b>hello</b>' } 
          b       :tag => 'b'
          i       :tag => 'i'
          u       :tag => 'u'
          em      :tag => 'i'
          strong  :tag => 'b'
          span
          img
        end
      end
    end
  end
end

def tags
end
