require File.dirname(__FILE__) + '/../lib/app'

require 'rack/test'

Spec::Runner.configure do |config|
  config.include(Rack::Test::Methods)
end
