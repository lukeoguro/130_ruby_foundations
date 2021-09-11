class Clock
  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24

  def self.at(hours, minutes = 0)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    @minutes = hours * MINUTES_IN_HOUR + minutes
  end

  def to_s
    hours, minutes = @minutes.divmod(MINUTES_IN_HOUR)
    hours %= HOURS_IN_DAY
    "#{format("%02d", hours)}:#{format("%02d", minutes)}"
  end

  def +(minutes)
    @minutes += minutes
    self
  end

  def -(minutes)
    @minutes -= minutes
    self
  end

  def ==(other)
    to_s == other.to_s
  end

  protected

  attr_reader :minutes
end

# 13:45
