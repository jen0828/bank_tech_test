require 'bank_account'

describe BankAccount do
  it 'should have zero balance for a new account' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end

  it 'can deposite money'do
    bank_account = BankAccount.new
    expect(bank_account.deposite(10)).to eq(10)
  end

  it 'can withdraw money'do
    bank_account = BankAccount.new
    expect(bank_account.withdraw(10)).to eq(-10)
  end
end
