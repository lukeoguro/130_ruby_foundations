class Series
  def initialize(digits)
    @digits = digits.split('').map(&:to_i)
  end

  def slices(n)
    raise ArgumentError if n > @digits.size
    @digits.each_cons(n).to_a
  end
end

# 7:08
