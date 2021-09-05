def step(start, limit, step)
  num = start
  while num <= limit
    yield(num)
    num += step
  end
  num
end

step(1, 10, 3) { |value| puts "value = #{value}" }