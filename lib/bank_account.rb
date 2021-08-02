class BankAccount
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @date = Time.now.strftime "%d/%m/%Y"  
    @transactions =[]
  end

  def deposite (amount)
    @balance += amount
  end

  def withdraw (amount)
    @balance -= amount
  end

  def add_transaction(date, type, amount, balance)
  end
end
