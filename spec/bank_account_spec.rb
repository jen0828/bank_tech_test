require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to(:balance)}
end