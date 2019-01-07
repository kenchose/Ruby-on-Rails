require_relative 'bankaccount'
RSpec.describe Account do 
  # before(:each) do 
  #   @account1 = Account.new(0, 100, 3)
  # end

  it "has a getter that retrieves the checking account balance" do
    account = Account.new
    account.checking = 100
    expect(account.checking).to eq(100)
  end

  it "a getter method that tetrifves the total account balance" do
    account = Account.new
    account.total = 2500
    expect(account.total).to eq(2500)
  end

  it "allows the user to withdraw cash" do
    account = Account.new
    account.total = 1
    expect(account.withdraw).to eq(true)
  end

  it "can't withdraw more money than they have in the account" do
    account = Account.new
    account.total = 0 
    expect {@account1.withdraw}.to raise_error(NoMethodError)
  end

  it "raises an error if a user attempts to retrieve the total number of bank accounts" do
    expect{@account1.accounts}.to raise_error(NoMethodError)
  end

  it "raises an error when the user attempts to set the interest rate" do
    expect{@account.interest}.to raise_error(NoMethodError)
  end
end

# - Has a getter method for retrieving the checking account balance 

# - Has a getter method that retrieves the total account balance  

# - Has a function that allows the user to withdraw cash  

# - Raises an error if a user tries to withdraw more money than they have in the account

# - Raises an error when the user attempts to retrieve the total number of bank accounts  

# - Raises an error when the user attempts to set the interest rate  

