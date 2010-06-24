require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Factory do

  before :each do
    @renderer_factory = Howrah::Renderer::Factory.new
  end
    
  describe '#create_renderer' do
    it "should create an Anchor renderer from tag_name :a" do
      renderer = @renderer_factory.create_renderer :a
      renderer.class.should be_a_kind_of Howrah::Renderer::Element::Anchor
    end
  end

  describe '#get_tag_name' do
    it "should get :anchor renderer name from mapping tag name :a in registered renderer mappings" do
      name = @renderer_factory.send :renderer_name, :a
      name.should == :anchor      
    end
  end
end