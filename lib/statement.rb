
class Statement
  def print_statement
    puts header.to_s
    account = BankAccount.new
    transactions = account.transactions
    transactions.reverse.map do |transaction|
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
