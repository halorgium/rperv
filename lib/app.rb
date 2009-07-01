require 'rubygems'
require 'sinatra'
$:.unshift(File.dirname(__FILE__))

require 'statistics'

class App < Sinatra::Base
  get '/' do
    "load average: #{Statistics.load_average.join(" ")}"
  end
end
