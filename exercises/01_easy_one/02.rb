def compute
  block_given? ? yield : "Does not compute."
end

puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'

def compute(arg)
  block_given? ? yield(arg) : "Does not compute."
end

puts compute(5) { |num| num + 3 } == 8
puts compute('a') { |char| char + 'b' } == 'ab'
puts compute(nil) == 'Does not compute.'
