module Statistics
  def self.uptime
    uptime = File.read("/proc/uptime")
    parse_uptime(uptime.split(" ").first.to_i)
  end

  def self.parse_uptime(sec_left)
    remainder,seconds = sec_left.divmod(60)
    remainder,minutes= remainder.divmod(60)
    days,hours = remainder.divmod(24)
    [days, hours, minutes, seconds]
  end

  def self.load_average
    c = File.read("/proc/loadavg")
    c.split(" ")[0,3]
  end

  def self.memory_boner
    "foo"
  end
end
