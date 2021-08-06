require 'statement'

describe Statement do
  it { is_expected.to respond_to(:print_statement) }

  it 'can print-out a bank statement' do
    bank_account = double(:bank_account)
    transaction_1 = double({ date: '03/08/2021', type: 'credit', amount: 30.00, balance: 30.00 })
    transaction_2 = double({ date: '03/08/2021', type: 'debit', amount: 20.00, balance: 10.00 })
    allow(bank_account).to receive(:add_transaction).and_return([transaction_1, transaction_2])
    expect(subject.print_statement).to include { transactions }
  end
end
