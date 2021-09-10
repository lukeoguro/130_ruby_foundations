class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(max)
    sum = 0
    1.step(max - 1) do |num|
      sum += num if @multiples.any? { |multiple| num % multiple == 0 }
    end
    sum
  end

  def self.to(max)
    SumOfMultiples.new(3, 5).to(max)
  end
end
