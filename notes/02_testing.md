# Testing

## Definition

* Categorically speaking, we are learning *unit testing*
* We write tests to prevent regression
* We want to write tests so if that when we make changes in the code, we don't have to manually verify everything still works
* Testing vocabulary:
  * Test Suite: The entire set of tests that accompanies the program (i.e., all the tests)
  * Test: The context or situation in which tests are run. A test can contain multiple assertions
  * Assertion: The actual verification step to confirm that the data returned to the program is indeed what was intended
* The four steps of testing (SEAT):
  * Setup the necessary objects
  * Execute the code against the object we're testing
  * Assert the results of the execution
  * Teardown and clean up remaining artifacts
* Code coverage refers to how much of code is tested by the test suite
  * One way of testing code coverage is to see if all methods are tested
  * There are more sophisticated tools too, like ensuring all branching logic is tested
  * It is not necessary to have 100% code coverage — it depends on the program
  * Code coverage can also be a measure of code quality

## Testing in Ruby

* The default testing library in Ruby is Minitest and comes with Ruby
* RSpec is a Domain Specific Language — it writes code that reads like natural English, but at the cost of simplicity
* Tests in Minitest start with `test_`
* Tests can be skipped with the `skip` keyword at the beginning of the test method
* We've been using *assertion-style* syntax, but another syntax called *expectation-style* exists too
* There are many types of assertions that can be confirmed in the [docs](https://docs.seattlerb.org/minitest/Minitest/Assertions.html)
  * Notably, the `assert_same` method is used to test for object equality
  * `assert_equal` is for value equality, and uses the `==` method
* Refutations are the opposite of assertions (i.e., they refute rather than assert)
* Repetitive sandwich code that must be run before and after the test can be consolidated in the `setup` and `teardown` methods
  * Instance variable should be used to tie down data so they can be accessed by other methods
  * These two methods are run before and after each test
* The `simplecov` gem can be used to test code coverage
