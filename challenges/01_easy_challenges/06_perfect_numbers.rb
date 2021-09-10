class PerfectNumber
  def self.classify(int)
    raise StandardError if int <= 0 || !(int % 1).zero?

    sum_of_divisors = sum_of_divisors(int)
    if sum_of_divisors == int
      'perfect'
    elsif sum_of_divisors > int
      'abundant'
    else
      'deficient'
    end
  end

  private_class_method def self.sum_of_divisors(int)
    divisors = []
    1.step(int - 1) do |divisor|
      divisors << divisor if int % divisor == 0
    end
    divisors.sum
  end
end

# 10:00
