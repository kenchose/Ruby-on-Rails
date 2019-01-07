class Account
  attr_accessor :total, :checking, :accounts
  # def initialize (total, checking, accounts)
  #   @total = total
  #   @checking = checking
  #   @accounts = accounts
  # end

  def checking
    @checking = 100
  end

  def total 
    @total = 2500
  end

  def withdraw
    @total > 0 unless false
  end
end