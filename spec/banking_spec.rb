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

end