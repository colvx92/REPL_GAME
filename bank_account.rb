class BankAccount
  attr_accessor :balance, :name
  # class << self; attr_accessor :balance, :name end
  @@minimum_balance = 200

  # def self.minimum_balance
  #   @@minimum_balance = 200
  # end

  # def minimum_balance(new_balance)
  #   @@minimum_balance = new_balance
  # end

  def initialize(balance, name)
    if balance < @@minimum_balance
      raise ArgumentError
      else
        @balance = balance
        @name = name
    end
  end

  # def self.minimum_balance=
  #   @@minimum_balance = 300
  # end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def transfer(amount, other_account)
    @balance -= amount
    other_account.balance += amount
  end

  def self.minimum_balance=(new_minimum)
    @@minimum_balance = new_minimum
  end

  def self.minimum_balance
    @@minimum_balance
  end
end

#
# p sam = BankAccount.new(500, "Sam")
# p sam.deposit(500)
# p sam.deposit(1500)
# p sam.withdraw(300)
# p judy = BankAccount.new(500, "Judy")
# p judy.deposit(300)
# p judy.withdraw(100)
# p sam.transfer(200, judy)
# p sam.transfer(100, judy)
# p judy.transfer(300, sam)
# # p george.minimum_balance(250)
# p george = BankAccount.new(200, "George")
# p george.minimum_balance(250)
# p stacy = BankAccount.new(215, "Stacy")
