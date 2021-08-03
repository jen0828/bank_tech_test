require 'bank_account'

describe BankAccount do
  it 'should have zero balance for a new account' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end

  it 'can deposite money' do
    bank_account = BankAccount.new
    expect(bank_account.deposite(10)).to include({ amount: 10, balance: 10, date: bank_account.date,
                                                   type: 'credit' })
  end

  it 'can withdraw money' do
    bank_account = BankAccount.new
    expect(bank_account.withdraw(10)).to include({ amount: 10, balance: -10, date: bank_account.date,
                                                   type: 'debit' })
  end

  it 'has an empty list of transactions by default' do
    expect(subject.transactions).to be_empty
  end

  it { is_expected.to respond_to(:date) }

  describe '#add_transaction' do
    it { is_expected.to respond_to(:add_transaction).with(4).arguments }
  end

  describe '#header' do
    it 'has statement heading' do
      expect(subject.header).to eq('date || credit || debit || balance')
    end
  end

  describe '#statement' do
    it { is_expected.to respond_to(:statement) }

    it 'can print-out a bank statement' do
      bank_account = double(:bank_account)
      transaction_1 = double({ date: '03/08/2021', type: 'credit', amount: 30.00, balance: 30.00 })
      transaction_2 = double({ date: '03/08/2021', type: 'debit', amount: 20.00, balance: 10.00 })
      allow(bank_account).to receive(:add_transaction).and_return([transaction_1, transaction_2])
      expect(subject.statement).to include { transactions }
      # ("
      #   date || credit || debit || balance

      #   03/08/2021 || || 20.00 || 10.00

      #   03/08/2021 || 30.00 || || 30.00
      # ")
    end
  end
end
