require_relative 'statement'
require_relative 'transaction'

class BankAccount
  attr_reader :balance, :transactions_history

  def initialize(transaction = Transaction, statement = Statement.new)
    @balance = 0
    @transactions_history = []
    @statement = statement
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    add_transaction(transaction_credit(amount))
  end

  def withdraw(amount)
    @balance -= amount
    add_transaction(transaction_debit(amount))
  end

  def print_statement
    @statement.print(@transactions_history)
  end

  private

  def add_transaction(transaction)
    @transactions_history.push(transaction)
  end

  def transaction_credit(amount)
    @transaction.new(Date.today, amount, 0, @balance)
  end

  def transaction_debit(amount)
    @transaction.new(Date.today, 0, amount, @balance)
  end
end
