module Matchers  
  class PrawnCommand
    def initialize(method, args)
      @expected = {:method => method, :args => args}
    end

    def matches?(actual)
      @actual = actual
      @actual == @expected
    end

    def failure_message
      "expected command #{@expected.inspect} but got command '#{@actual.inspect}'"
    end

    def negative_failure_message
      "expected command '#{@expected..inspect}' but found command '#{@actual.inspect}'"
    end
  end

  def be_command(method, args)    
    args = [args] if !args.kind_of? Array    
    args = [args] if method == :formatted_text_box && !args[0].kind_of?(Array)
    PrawnCommand.new(method, args)  
  end
end