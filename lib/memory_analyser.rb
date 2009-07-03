require 'yaml'

class MemoryAnalyser
  def data
    @data ||= YAML.load(File.open("/proc/meminfo"))
  end
end
