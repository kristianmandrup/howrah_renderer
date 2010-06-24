require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

# should be rspec 2.0

describe "Fixnum extensions" do
  describe '#inc' do
    it "should increase number by one" do
      5.inc.should == 6
    end
  end

  describe '#dec' do
    it "should increase number by one" do
      5.dec.should == 4
    end
  end
end