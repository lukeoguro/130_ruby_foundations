# Closures

## Definition

* A closure is a general programming concept that allows programmers to save a "chunk of code" and execute it at a later time
* They are called closures because it's said to bind its surrounding artifacts (i.e., variables, methods, objects, etc) and build an "enclosure" around everything so that they can be referenced when the closure is later executed
* Sometimes they could be thought of as executable methods, but not defined with an explicit name
* Chunks of code can be handy to be passed into existing methods
* The chunk of code retains reference to its surrounding artifacts — it's **binding**
* Blocks have two main use cases:
  * Defer implementation code to the method invocation decision
    * There are two roles involving methods: the method implementor and the method caller
    * At times, the method implementor is not certain how the method will be used
    * Blocks provides the necessary means to *refine* the method implementation, without modifying the implementation itself
    * It allows method implementors to build generic methods that can be used in a variety of different ways
  * Methods that need to perform some before and after actions — sandwich code
    * Some examples include timing, logging, and notification systems
    * Another case is resource management, or interfacing with the operating system
    * For instance, the `File::open` method can take a block, which automatically closes the file after the block is executed
* Closures retain a memory of their surrounding scope and can use or even update variables in that scope when they are executed, even if they are invoked from somewhere else
* Closures keep track of their surrounding context (i.e., binding)

## Closures in Ruby

* In Ruby, a closure is implemented through a `Proc` object, block, or lambda
* Every method can take an optional block as an implicit parameter
* The passed-in block argument can be invoked from within the method with the `yield` keyword
* A `LocalJumpError` will be raised if an `yield` exists in the method, but no block was passed in as an argument
* The `Kernel#block_given?` method can verify if a block was passed in
* A block parameter is a *block local variable*, a special local variable where the scope is constrained to the block
* The rules regarding the number of arguments you must pass into a block, proc, or lambda is called **arity**
  * Blocks and `Proc` objects have lenient arity, meaning Ruby will not complain if there are too few or too many arguments passed in
  * Methods and lambdas have strict arity, meaning the exact number of arguments must be passed in
* To have a method take an explicit block, a parameter that begins with `&` can be added
  * This will convert the block to a simple `Proc` object
  * Having an explicit block allows you to pass the block to another method
  * `Proc` objects are invoked with the `call` method
* Methods and blocks can return `Proc`s and `lambda`s that can subsequently be called
* In Ruby, a binding keeps track of its surrounding context
  * This includes local variables, method references, constants, and other artifacts
  * Local variables need to be initialized before the block is created, otherwise it wouldn't be included in the binding
* `Symbol` to `Proc`
  * There is a convenient shorthand for invoking a method on each element of an array
  * An example is: `[1, 2, 3, 4, 5].map(&:to_s)`
  * Somehow, `(&:to_s)` gets converted to `{ |n| n.to_s }`
  * First, Ruby checks if the object after `&` is a `Proc` — if it isn't, Ruby will invoke `#to_proc` on it (an error will be raised if this fails)
  * Then, `&` turns the `Proc` is turned into a block
  * So, when a symbol is passed in, `Symbol#to_proc` is invoked
* The functions of `&`:
  * For a method definition, `&` is used to specify an explicit block and turns the block into a `Proc` object
  * In a method definition, `&` is used to turn the `Proc` object (which if it isn't already a `Proc`, Ruby will attempt to make it one with `#to_proc`) and turn it into a block
