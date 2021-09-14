def danish(string)
  string.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end

puts danish('An apple a day keeps the doctor away') == 'An danish a day keeps the doctor away'

puts danish('My favorite is blueberry pie') == 'My favorite is danish pie'

puts danish('The cherry of my eye') == 'The danish of my eye'

puts danish('apple. cherry. blueberry.') == 'danish. cherry. blueberry.'

puts danish('I love pineapple') == 'I love pineapple'