class Octal
  def initialize(string)
    @string = string
  end

  def to_decimal
    return 0 if @string.count("a-zA-Z89") > 0
    index = @string.size - 1
    decimal = 0
    @string.each_char do |char|
      decimal += char.to_i * (8**index)
      index -= 1
    end
    decimal
  end
end

# 15:00
