# frozen_string_literal: true

require 'banking'

describe BankAccount do
  subject(:account) { BankAccount.new }

  it('starts with a 0 balance') do
    expect(account.balance).to eq(0)
  end

  describe '#deposit' do
    it('user is able to deposit') do
      account.deposit('10/01/2012', 1000)
      expect(account.balance).to eq(1000)
    end
  end

  describe '#withdraw' do
    before { account.deposit('10/01/2012', 2000) }

    it('user is able to withdraw') do
      account.withdraw('14/01/2012', 500)
      expect(account.balance).to eq(1500)
    end

    it('raises an error if insufficient funds in the account') do
      expect { account.withdraw('14/01/2012', 2050) }.to raise_error('Account has insufficient funds!')
    end
  end

  describe '#account_statement' do
    it('displays the current account statement') do
      account.deposit('10/01/2012', 1000)
      account.withdraw('14/01/2012', 500)
      expect(account.account_statement).to include("date || credit || debit || balance")
      expect(account.account_statement).to include("14/01/2012 || 0 || 500 || 500")
      expect(account.account_statement).to include("10/01/2012 || 1000 || 0 || 1000")
    end
  end
end
