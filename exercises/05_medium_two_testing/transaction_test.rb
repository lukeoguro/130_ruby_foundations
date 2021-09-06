require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @item_cost = 50
    @amount_paid = 60
    @transaction = Transaction.new(@item_cost)
  end

  def test_prompt_for_payment
    message = "You owe $#{@item_cost}.\nHow much are you paying?\n"
    assert_output(message) do
      @transaction.prompt_for_payment(input: StringIO.new("#{@amount_paid}\n"))
    end
    assert_equal(@amount_paid, @transaction.amount_paid)
  end
end