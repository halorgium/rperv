require 'rubygems'
require 'sinatra'
$:.unshift(File.dirname(__FILE__))

require 'statistics'

class App < Sinatra::Base
  get '/' do
    content_type :text
    <<-EOT
load average: #{Statistics.load_average.join(" ")}
uptime: #{Statistics.uptime.join(", ")}
      EOT
  end
end
