require 'date'

class Transaction

  attr_reader :balance, :credit, :debit, :date
  
  def initialize (date = Date.today, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end
end