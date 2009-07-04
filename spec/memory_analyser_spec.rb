require File.dirname(__FILE__) + '/spec_helper'

describe MemoryAnalyser do
  it 'returns the correct value for total_memory' do
    f = File.open(File.dirname(__FILE__) + '/canned_data/meminfo')
    File.should_receive(:open).and_return(f)

    MemoryAnalyser.new.total_memory.should == "2054584 kB"
  end
end
