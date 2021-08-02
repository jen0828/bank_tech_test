require 'bank_account'

describe BankAccount do
  it 'should have zero balance for a new account' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
  end
end
