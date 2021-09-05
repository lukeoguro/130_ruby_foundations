require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError
  end
end

class Test < Minitest::Test
  def test_exception
    employee = Employee.new

    assert_raises(NoExperienceError) { employee.hire }
  end
end
