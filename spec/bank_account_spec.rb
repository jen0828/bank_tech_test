require 'bank_account'

describe BankAccount do
  it 'should have zero balance for a new account' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end

  it 'can deposit money' do
    bank_account = BankAccount.new
    subject.deposit(10)
    expect(subject.balance).to eq(10)
  end

  it 'can deposit multiple times' do
    bank_account = BankAccount.new
    subject.deposit(10)
    subject.deposit(10)
    subject.deposit(10)
    subject.deposit(10)
    expect(subject.balance).to eq(40)
  end

  it 'can withdraw money' do
    bank_account = BankAccount.new
    subject.withdraw(10)
    expect(subject.balance).to eq(-10)
  end

  it 'can deposit and withraw multiple times' do
    bank_account = BankAccount.new
    subject.deposit(10)
    subject.withdraw(10)
    subject.deposit(10)
    subject.withdraw(10)
    expect(subject.balance).to eq(0)
  end

  it 'has an empty list of transactions by default' do
    expect(subject.transactions_history).to be_empty
  end
end
