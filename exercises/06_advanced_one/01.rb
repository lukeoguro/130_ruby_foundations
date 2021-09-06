factorial = Enumerator.new do |y|
  n = 0
  n_factorial = 1
  loop do
    y.yield(n_factorial) # y << n
    n += 1
    n_factorial *= n
  end
end

puts "--- Correct output (external iterator)"
7.times do |index|
  puts "#{index}! == #{factorial.next}"
end

puts "--- Incorrect output (external iterator)"
3.times do |index|
  puts "#{index}! == #{factorial.next}"
end

factorial.rewind

puts "--- Correct output again (external iterator)"
7.times do |index|
  puts "#{index}! == #{factorial.next}"
end


puts "--- Correct output (internal iterator, auto rewind)"

factorial.each_with_index do |number, index|
  puts "#{index}! == #{number}"
  break if index >= 6
end