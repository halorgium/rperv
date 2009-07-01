module Statistics
  def self.uptime
    "foo"
  end

  def self.load_average
    c = File.read("/proc/loadavg")
    c.split(" ")[0,3]
  end

  def self.memory_boner
    "foo"
  end
end
