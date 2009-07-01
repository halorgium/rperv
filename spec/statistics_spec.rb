require File.dirname(__FILE__) + '/spec_helper'

describe Statistics do
  it "returns an array of 3 numbers for load_average" do
    l = Statistics.load_average
    l.should have(3).entries
  end
end

