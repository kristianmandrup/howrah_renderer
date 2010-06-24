require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Anchor do

  before :each do
    @renderer = Howrah::Renderer::Element::Anchor.new :
  end

  describe '#new' do
    @renderer = Howrah::Renderer::Element::Anchor.new :caption => 'my anchor', :src => 'www.google.com'    
    @renderer.state.should == :caption => 'my anchor', :src => 'www.google.com'
  end
    
  describe '#render' do
    it "should render an anchor" do      
      @renderer = Howrah::Renderer::Element::Anchor.new :caption => 'my anchor', :src => 'www.google.com'
      @renderer.render
      @renderer.prawn_commands.first.should be_command :formatted_text_box, {:text => "<a href='www.google.com'>my anchor</a>" }            
    end
  end
end