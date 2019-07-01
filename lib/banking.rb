class BankAccount
	attr_reader :balance
	
	ACCOUNT_BALANCE = 0

	def initialize(balance = ACCOUNT_BALANCE)
		@balance = balance
	end

	def deposit(amount)
		@balance += amount
		return @balance
	end

end