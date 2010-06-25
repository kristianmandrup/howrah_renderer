require 'bundler'
Bundler.setup(:default, :test)

require 'howrah_renderer'
require 'rspec'
require 'rspec/autorun'
# gems
require 'prawn_commander'
require 'kmandrup-colorist'
require 'proxy_party'
require 'foxy_factory'
# rspec helpers
require 'command_matchers'
require 'exemplar'

Spec::Runner.configure do |config|
  config.mock_with :mocha  
  config.include(Matchers)    
end
