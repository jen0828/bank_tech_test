require_relative 'statement'

class BankAccount
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @date = Time.now.strftime '%d/%m/%Y'
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    add_transaction(date, type = 'credit', amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    add_transaction(date, type = 'debit', amount, balance)
  end

  private

  def add_transaction(date, type, amount, balance)
    @transactions.push(date: date, type: type, amount: amount, balance: balance)
  end
end
