items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*arg1, arg2|
  puts arg1.join(', ')
  puts arg2
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |arg1, *arg2, arg3|
  puts arg1
  puts arg2.join(', ')
  puts arg3
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |arg1, *arg2|
  puts arg1
  puts arg2.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1}, #{arg2}, #{arg3}, and #{arg4}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!
