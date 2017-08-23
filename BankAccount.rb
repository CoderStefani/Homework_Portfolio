class BankAccount
  @@minimum_balance = 200
  attr_accessor :name, :balance
  def initialize(balance, name)
    if balance < @@minimum_balance
      raise ArgumentError
    else
      @balance = balance
    end
    @name = name

  end
  def self.minimum_balance= new_balance
    @@minimum_balance = new_balance
  end
  def self.minimum_balance
    @@minimum_balance
  end
  def balance
    @balance
  end

  def deposit(money)
    @balance += money
  end
  def transfer(money,recipient)
    @balance -= money
    recipient.balance += money
  end
  def withdraw(money)
    @balance = @balance - money
  end
end
