require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

class Howrah::Renderer::Element::Bold < Inline  
  def initialize state
    super
  end

  def render
    prawn_command :text, [ format_text, {:inline_format => true} ]    
  end
  
  def tag
    'b'
  end
end

describe Howrah::Renderer::Element::Bold do
  let (:folder)         { 'inline' }   
  include Exemplar

  before :each do
    @text = 'my header'
    @commander  = Prawn::Commander.new 
    @renderer = Howrah::Renderer::Element::Bold.new {:text => @text}, @commander
  end

  describe '#new' do
    it "should set the state"
      @renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render an anchor" do
      @renderer.render
      @renderer.prawn_commands.first.should be_command :text, [ "<b>#{text}</a>", {:inline_format => true} ]
      pdf_exemplar renderer, 'bold'
    end
  end
end