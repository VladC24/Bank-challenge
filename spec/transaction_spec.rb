require 'transaction'

describe Transaction do
			
	it('uses four arguments: date, credit, debit, balance') do
		date = '14/01/2012'
		credit = 1000
		debit = 1000
		balance = 0
		transaction = Transaction.new(date, credit, debit, balance)
		expect(transaction.date).to eq(date)
		expect(transaction.credit).to eq(credit)
		expect(transaction.debit).to eq(debit)
		expect(transaction.balance).to eq(balance)
	end
	
end 