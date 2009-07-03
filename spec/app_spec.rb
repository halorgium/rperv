require File.dirname(__FILE__) + '/spec_helper'

describe App do
  def app
    App
  end

  it "shows the load average" do
    get "/" do |response|
      response.body.should =~ /load average: /
    end
  end

  it 'shows the uptime' do
    get "/" do |response|
      response.body.should =~ /uptime: /
    end
  end
end
