require File.dirname(__FILE__) + '/spec_helper'

describe Statistics do
  it "returns an array of 3 numbers for load_average" do
    l = Statistics.load_average
    l.should have(3).entries
  end

  it "parses uptime correctly" do
    p = Statistics.parse_uptime(187520)
    p.should == [2, 4, 5, 20]
  end
end

