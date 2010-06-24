require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Image do

  before :each do
    @renderer = Howrah::Renderer::Element::Image.new :
  end

  describe '#new' do 
    it "should set the state"
      state = {:caption => 'my image', :src => 'image.png'}
      @renderer = Howrah::Renderer::Element::Image.new state
      @renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an image" do                    
      caption = 'my image'           
      src     = 'image.png'
      state = {:caption => caption, :src => src}
      @renderer = Howrah::Renderer::Element::Anchor.new state
      @renderer.render
      @renderer.prawn_commands.check do
        first.should be_command :image, src
        [2].should be_command :text, caption
      end
    end
  end
end