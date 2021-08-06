require 'bank_account'

describe BankAccount do
  it 'should have zero balance for a new account' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end

  it 'can deposit money' do
    bank_account = BankAccount.new
    expect(bank_account.deposit(10)).to include({ amount: 10, balance: 10, date: bank_account.date,
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
  
end
