class BankAccount
attr_accessor :balance, :status, :amount
attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @amount = amount
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    p "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"
  end
end
