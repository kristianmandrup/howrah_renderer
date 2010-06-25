require 'romans'

module Howrah
  module Renderer
    module Helper
      module Number
        class Roman
          def self.translate(level, type = :lower)
            num = RomanNumeral.get(level).to_s
            return num if type == :lower       
            num.upcase        
          end
        end
  
        class Alpha
          def self.translate(level, type = :lower)
            @alpha_arr ||= ('a'..'z').to_a + ('aa'..'zz').to_a 
            alpha = alpha_arr[level]
            return alpha if type == :lower       
            alpha.upcase        
          end
        end
      end  
    end
  end
end