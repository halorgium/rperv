require 'yaml'

class MemoryAnalyser
  def total_memory
    data["MemTotal"]
  end

  def data
    @data ||= YAML.load(File.open("/proc/meminfo"))
  end
end
