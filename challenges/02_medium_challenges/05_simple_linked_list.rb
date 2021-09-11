class Element
  attr_reader :datum, :next

  def initialize(d, n = nil)
    @datum = d
    @next = n
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def push(datum)
    @head = (@head.nil? ? Element.new(datum) : Element.new(datum, @head))
  end

  def empty?
    @head.nil?
  end

  def size
    return 0 if empty?
    counter = 1
    current_element = @head
    loop do
      return counter if current_element.tail?
      current_element = current_element.next
      counter += 1
    end
  end

  def peek
    @head.nil? ? nil : @head.datum
  end

  def pop
    popped_head = @head
    @head = @head.next
    popped_head.datum
  end

  def self.from_a(array)
    return new if array.nil?

    list = new
    array.reverse.each do |datum|
      list.push(datum)
    end
    list
  end

  def to_a
    return [] if empty?
    array = []
    current_element = @head
    loop do
      array << current_element.datum
      return array if current_element.tail?
      current_element = current_element.next
    end
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end
end

# 25:12
