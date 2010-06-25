require 'bundler'
Bundler.setup(:default, :test)

require 'howrah_renderer'
require 'rspec'
require 'rspec/autorun'
require 'command_matchers'

Spec::Runner.configure do |config|
  config.mock_with :mocha  
  config.include(Matchers)    
end
