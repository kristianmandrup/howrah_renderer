module Howrah
  module Renderer
    class Factory
      attr_accessor :factory
      
      def initialize
        @factory = Foxy::Factory.new
      end 

      # TODO: add arguments to create?
      def create_renderer tag_name 
        renderer_class = get_tag_name(tag_name)
        factory.create(renderer_class)
      end        
      
      def get_tag_name tag_name
        raise ArgumentError, "Must respond to :to_sym" if !tag_name.respond_to? :to_sym
        mapped_name = renderer_mappings[tag_name.to_sym]        

        render_class = mapped_name ? mapped_name : tag_name
      end
      
      def renderer_mappings
        {
          :a => :anchor,
          :img => :image,
          :ul => :list,
          :ol => :list,
          :dl => :list
        }
      end
    end
  end
end