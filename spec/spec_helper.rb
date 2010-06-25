require 'bundler'
Bundler.setup(:default, :test)

require 'rspec'
require 'rspec/autorun'
require 'howrah_renderer'

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
