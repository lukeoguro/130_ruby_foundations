# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." } # Kernel#proc shorthand
puts my_proc
puts my_proc.class
my_proc.call # Assigns nil to block parameter if no argument is passed in
my_proc.call('cat')

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." } # Equivalent to Proc.new, except Proc checks number of arguments
my_second_lambda = -> (thing) { puts "This is a #{thing}." } # Kernel#lambda shorthand
puts my_lambda # From Proc class but maintains separate identify, seen from (lambda)
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
# my_lambda.call # Raises ArgumentError
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } # Proc objects come in two flavors: lambda and non-lambda (regular proc objects). There is no Lambda class, and therefore an error is raised

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # Assigns nil to seal block parameter
# block_method_1('seal') # LocalJumpError

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."} # NameError, because animal block local variable was never initialized and doesn't belong in the block's scope

=begin
Lambda and Procs are both Proc objects.
Implicit blocks are not objects.
They are all types of closures.

Lambdas enforces the number of arguments passed in to them. This is strict arity.
Procs and blocks do not. This is lenient arity.
=end