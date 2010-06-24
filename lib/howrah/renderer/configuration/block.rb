module Howrah
  module Renderer
    module Configuration
      def block_tags
        styles :prawn, :block => true do          
          p
          div
          h1  :size  => 32, :styles => [:bold], :padding => {:bottom => 10}
          h2  :size  => 26, :styles => [:bold, :italic], :padding => {:bottom => 10}
          h3  :size  => 18, :styles => [:bold, :italic], :padding => {:bottom => 8}
          h4  :size  => 14, :styles => [:bold, :italic], :padding => {:bottom => 6}
          h5  :size  => 12, :styles => [:bold, :italic], :padding => {:bottom => 4}
          h6  :size => 12,  :styles => [:italic], :padding => {:bottom => 4}
        }
      end
    end
  end
end
