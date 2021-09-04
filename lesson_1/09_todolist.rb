class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError, "Can only add Todo objects" unless Todo === todo
    @todos << todo
  end

  alias_method :<<, :add

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def to_a
    @todos.clone
  end

  def done?
    @todos.all?(&:done?)
  end

  def item_at(index)
    @todos.fetch(index)
  end

  def mark_done_at(index)
    item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def done!
    @todos.each(&:done!)
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(index)
    item_at(index)
    @todos.delete_at(index)
  end

  def to_s
    output = "---- Today's Todos ----\n"
    @todos.each do |todo|
      output << todo.to_s + "\n"
    end
    output
  end
end

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

puts [todo1] == list.add(todo1)
puts [todo1, todo2] == list << (todo2)
puts [todo1, todo2, todo3] == list.add(todo3)
# list.add(1) # raises TypeError with message "Can only add Todo objects"

puts list.size == 3
puts list.first == todo1
puts list.last == todo3
puts [todo1, todo2, todo3] == list.to_a
puts false == list.done?

# list.item_at # raises ArgumentError
puts todo2 == list.item_at(1)
# list.item_at(100) # raises IndexError

# list.mark_done_at # raises ArgumentError
list.mark_done_at(1)
# list.mark_done_at(100) # raises IndexError
puts todo2.done?

# list.mark_undone_at # raises ArgumentError
list.mark_undone_at(1)
# list.mark_undone_at(100) # raises IndexError
puts !todo2.done?

list.done!
puts [todo1, todo2, todo3].all?(&:done?)

puts todo1 == list.shift
puts todo3 == list.pop
puts todo2 == list.pop

list << todo1
list << todo2
list << todo3

puts todo2 == list.remove_at(1)
# list.remove_at(100) # raises IndexError

puts list.to_s
# ---- Today's Todos ----
# [X] Buy milk
# [X] Go to gym