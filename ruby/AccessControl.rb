class Account
  attr_accessor :balance
  def initialize( balance )
    @balance = balance
  end
end

class Transaction
  def initialize( account_a, account_b )
    @account_a = account_a
    @account_b = account_b
  end

  private

  def debit( account, amount )
    account.balance -= amount
  end

  def credit( account, amount )
    acount.balance += amount
  end

  public

  def transfer( amount )
    debit( @account_a, amount )
    crebit( @account_b, amount )
  end
end

savings = Account.new( 500 )
checking = Account.new( 200 )

transaction = Transaction.new( checking, savings )
transaction.transfer( 100 )
