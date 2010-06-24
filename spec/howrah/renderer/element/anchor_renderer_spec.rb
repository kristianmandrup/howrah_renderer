require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Anchor do

  before :each do
    @renderer = Howrah::Renderer::Element::Anchor.new :
  end

  describe '#new' do        
    it "should set the state"                              
      state = :caption => 'my anchor', :src => 'www.google.com'
      @renderer = Howrah::Renderer::Element::Anchor.new 
      @renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an anchor" do      
      caption = 'my anchor'
      src     = 'www.google.com'
      @renderer = Howrah::Renderer::Element::Anchor.new :caption => caption, :src => src
      @renderer.render
      @renderer.prawn_commands.first.should be_command :formatted_text_box, {:text => "<a href='#{src}'>#{caption}</a>" }            
    end
  end
end