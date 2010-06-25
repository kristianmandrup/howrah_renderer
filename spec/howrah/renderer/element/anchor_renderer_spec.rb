require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Anchor do

  before :each do
    @commander  = Prawn::Commander.new 
  end

  describe '#new' do        
    it "should set the state"                              
      state = :caption => 'my anchor', :src => 'www.google.com'
      renderer = Howrah::Renderer::Element::Anchor.new state, @commander
      renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an anchor" do      
      caption = 'my anchor'
      src     = 'www.google.com'                        
      state = :caption => caption, :src => src
      renderer = Howrah::Renderer::Element::Anchor.new state, @commander 
      renderer.render
      renderer.prawn_commands.first.should be_command :text, [ "<a href='#{src}'>#{caption}</a>", {:inline_format => true} ]
      
    end
  end
end