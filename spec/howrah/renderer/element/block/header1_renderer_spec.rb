require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Header1 do

  before :each do
    @text = 'my header'   
    @commander  = Prawn::Commander.new 
    @renderer = Howrah::Renderer::Element::Header1.new {:text => @text}, @commander
  end

  describe '#new' do
    it "should set the state"
      @renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an anchor" do
      @renderer.render
      @renderer.prawn_commands.first.should be_command :formatted_text_box, [{:text =>  @text}], :styles => [:bold], :size => 32]
    end
  end
end