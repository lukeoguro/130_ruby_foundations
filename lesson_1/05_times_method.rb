def times(number)
  counter = 0

  while counter < number
    yield(counter)
    counter += 1
  end

  counter
end

times(5) do |number|
  puts number
end