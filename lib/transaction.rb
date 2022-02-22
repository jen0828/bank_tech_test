require 'date'

class Transaction
  def initialize (date = Date.today, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end
end