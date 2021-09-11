class Robot
  attr_reader :name

  @@names = []

  def initialize
    loop do
      @name = random_name
      break unless @@names.include?(@name)
    end
    @@names << @name
  end

  def reset
    @name = random_name
  end

  private

  def random_name
    ("A".."Z").to_a.sample(2).join + ("0".."9").to_a.sample(3).join
  end
end

# 11:30
