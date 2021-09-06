require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @item_cost = 50
    @amount_paid = 60
    @transaction = Transaction.new(@item_cost)
    @transaction.amount_paid = @amount_paid

    @init_total_money = 1500
    @cash_register = CashRegister.new(@init_total_money)
  end

  def test_accept_money
    @cash_register.accept_money(@transaction)
    assert_equal(@init_total_money + @amount_paid, @cash_register.total_money)
  end

  def test_change
    assert_equal(@amount_paid - @item_cost, @cash_register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction.item_cost}.\n") do
      @cash_register.give_receipt(@transaction)
    end
  end
end