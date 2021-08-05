class BankAccount
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @date = Time.now.strftime '%d/%m/%Y'
    @transactions = []
  end

  def deposite(amount)
    @balance += amount
    add_transaction(date, type = 'credit', amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    add_transaction(date, type = 'debit', amount, balance)
  end

  def add_transaction(date, type, amount, balance)
    @transactions.push(date: date, type: type, amount: amount, balance: balance)
  end

  

  def statement
    puts header.to_s
    @transactions.reverse.map do |transaction|
      if transaction[:type] == 'credit'
        puts "\n#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
      else
        transaction[:type] == 'debit'
        puts "\n#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
      end
    end
  end

  private

  def header
    'date || credit || debit || balance'
  end
end
