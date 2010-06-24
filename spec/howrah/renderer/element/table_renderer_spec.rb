require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

# should be rspec 2.0

describe Howrah::Renderer::Element::Table do

  before :each do
    @renderer = Howrah::Renderer::Element::Image.new :
  end

  describe '#new' do 
    it "should set the state" do
      state = {:caption => 'my table'}
      @renderer = Howrah::Renderer::Element::Table.new state
      @renderer.state.should be state
    end
  end
    
  describe '#render' do
    it "should render a table" do                           
      header  = ['a', 'b']                                   
      body    = [['1', 'x'], ['2', 'y']]
      footer  = ['', 'xy']
      table_data = (body + footer).flatten
      state   = {:caption => 'my table', :header => ['a', 'b'], :body => body, :footer => footer}
      @renderer = Howrah::Renderer::Element::Table.new state
      @renderer.render
      @renderer.prawn_commands.check do
        first.should be_command :table, [header, table_data]
        [2].should be_command :text, 'my table'
      end
    end
  end
end