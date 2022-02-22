require 'statement'

describe Statement do
  let(:transactions_history) { [transaction1, transaction2] }
  let(:transaction1) { double(:transaction1, date: Date.today, credit: 10_000, debit: 0, balance: 10_000) }
  let(:transaction2) { double(:transaction2, date: Date.today, credit: 0, debit: 1000, balance: 1000) }
  it 'can print out transactions' do
    expect do
      subject.print(transactions_history)
    end.to output("date || credit || debit || balance\n"\
      "#{Date.today.strftime('%d/%m/%Y')} ||  || 1000.00 || 1000.00\n"\
      "#{Date.today.strftime('%d/%m/%Y')} || 10000.00 ||  || 10000.00\n").to_stdout
  end
end
