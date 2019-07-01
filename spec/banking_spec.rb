require 'banking'

describe BankAccount do
	subject (:account) { BankAccount.new }

	it('starts with a 0 balance') do
		expect(account.balance).to eq(0)
	end

	describe '#deposit' do
		it('user is able to deposit') do
			account.deposit(1000)
			expect(account.balance).to eq(1000)
		end
	end

	describe '#withdraw' do
		before {account.deposit(2000)}

		it('user is able to withdraw') do
			account.withdraw(500)
			expect(account.balance).to eq(1500)
		end

		it('raises an error if insufficient funds in the account') do			
			expect{ account.withdraw(2050) }.to raise_error('Account has insufficient funds!')
		end
	end

end