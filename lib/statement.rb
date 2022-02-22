class Statement
  def print(transactions = [])
    print_header
    print_transactions(transactions)
  end

  private

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transactions(transactions)
    transactions.reverse.each do |transaction|
      if transaction[:type] == 'credit'
        puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
      else
        transaction[:type] == 'debit'
        puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
      end
    end
  end
end
