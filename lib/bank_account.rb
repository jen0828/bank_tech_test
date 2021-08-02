class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions =[]
  end

  def deposite (amount)
    @balance += amount
  end

  def withdraw (amount)
    @balance -= amount
  end
end
