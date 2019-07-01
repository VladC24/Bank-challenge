class BankAccount
	attr_reader :balance
	
	ACCOUNT_BALANCE = 0

	def initialize(balance = ACCOUNT_BALANCE)
		@balance = balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		raise 'Account has insufficient funds!' if @balance < amount
		@balance -= amount	
	end

	def current_balance
		return "The account balance is #{@balance}"
	end

end