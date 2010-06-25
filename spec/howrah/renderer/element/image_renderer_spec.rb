require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Image do
  let (:folder)         { 'image' }   

  before :each do
    @commander  = Prawn::Commander.new 
  end

  include Exemplar

  describe '#new' do 
    it "should set the state"
      state = {:caption => 'my image', :src => 'image.png'}
      renderer = Howrah::Renderer::Element::Image.new state, @commander
      renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an image" do                    
      caption = 'my image'           
      src     = 'image.png'
      state = {:caption => caption, :src => src}
      renderer = Howrah::Renderer::Element::Anchor.new state
      renderer.render
      renderer.prawn_commands do |c|
        c.first.should be_command :image, src
        c[2].should be_command :text, caption
      end 
      pdf_exemplar renderer, 'image_1'
    end
  end
end