# frozen_string_literal: true

class BankAccount
  attr_reader :balance

  ACCOUNT_BALANCE = 0

  def initialize(balance = ACCOUNT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(date, credit)
    @balance += credit
    transaction = Transaction.new(date, credit, 0, @balance)
    @transactions << transaction
  end

  def withdraw(date, debit)
    raise 'Account has insufficient funds!' if @balance < debit

    @balance -= debit
    transaction = Transaction.new(date, 0, debit, @balance)
    @transactions << transaction
  end

  def account_statement
    puts 'date || credit || debit || balance'
    
    @transactions.reverse.each do |record|
      puts "#{record.date} || #{record.credit} || #{record.debit} || #{record.balance}"
    end
  end
end
