require 'date'

class Meetup
  DAYS_OF_WEEK = {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 3,
    'Thursday' => 4,
    'Friday' => 5,
    'Saturday' => 6,
    'Sunday' => 7
  }

  WEEK = {
    'First' => 1,
    'Second' => 2,
    'Third' => 3,
    'Fourth' => 4,
    'Fifth' => 5,
    'Last' => :last,
    'Teenth' => :teenth
  }

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    day_of_week = DAYS_OF_WEEK[weekday.capitalize]
    dates = dates(day_of_week)

    week = WEEK[schedule.capitalize]
    if (1..5).include?(week)
      dates[week - 1]
    elsif week == :last
      dates.last
    else
      dates.find { |date| (13..19).include?(date.day) }
    end
  end

  def dates(day_of_week)
    dates = []
    1.step(Date.new(@year, @month, -1).day) do |day|
      date = Date.new(@year, @month, day)
      dates << date if date.cwday == day_of_week
    end
    dates
  end
end

# 29:45
