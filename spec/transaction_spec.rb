require 'transaction'
require 'date'

describe Transaction do
  it "create a transaction" do
    subject = described_class.new( Date.today, 1000, 1000, 2000 )
    expect(subject.date).to eq(Date.today)
    expect(subject.credit).to eq 1000
    expect(subject.debit).to eq 1000
    expect(subject.balance).to eq 2000
  end
end

