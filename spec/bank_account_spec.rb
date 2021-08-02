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

  it 'has an empty list of transactions by default' do
    expect(subject.transactions).to be_empty
  end

  it { is_expected.to respond_to(:date)}

  describe '#add_transaction' do
    it {is_expected.to respond_to(:add_transaction).with(4).arguments}
  end
  
end

# describe '#top_up' do
#   it { is_expected.to respond_to(:top_up).with(1).argument }

#   it 'can top up the balance' do
#     expect { subject.top_up 1 }.to change { subject.balance }.by 1
#   end