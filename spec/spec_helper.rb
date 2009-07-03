require File.dirname(__FILE__) + '/../lib/app'

require 'rack/test'
require 'webrat'

Spec::Runner.configure do |config|
  config.include(Rack::Test::Methods)
  config.include(Webrat::Matchers)
end
