class CustomSet
  def initialize(input_array = [])
    @array = []
    input_array.each do |element|
      add(element)
    end
  end

  def empty?
    array.empty?
  end

  def contains?(element)
    array.include?(element)
  end

  def subset?(other)
    array.all? { |element| other.contains?(element) }
  end

  def disjoint?(other)
    array.all? { |element| !other.contains?(element) }
  end

  def eql?(other)
    array.sort == other.array.sort
  end

  def ==(other)
    eql?(other)
  end

  def add(element)
    array << element if !array.include?(element)
    self
  end

  def intersection(other)
    new_array = array.select { |element| other.contains?(element) }
    self.class.new(new_array)
  end

  def difference(other)
    self.class.new(array - other.array)
  end

  def union(other)
    self.class.new(array + other.array)
  end

  protected

  attr_reader :array
end

# 25:00
