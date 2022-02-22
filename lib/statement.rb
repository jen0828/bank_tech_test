class Statement
  def print(transactions_history)
    print_header
    print_transactions(transactions_history)
  end

  private

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_transactions(transactions_history)
    @transactions_history = transactions_history
    content = @transactions_history.reverse.map do |transaction|
        "#{transaction.date.strftime('%d/%m/%Y')} "\
        "|| #{format_currency(transaction.credit)} "\
        "|| #{format_currency(transaction.debit)} "\
        "|| #{format_currency(transaction.balance)}\n"
      end
      puts content.join
   end
      
   def format_currency(amount)
    amount.zero? ? '' : format('%.2f', amount)
  end 
end
