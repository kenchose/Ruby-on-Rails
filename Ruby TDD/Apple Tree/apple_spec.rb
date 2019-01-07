require_relative "apple"
RSpec.describe Apple do
  before (:each) do 
    @apple1 = Apple.new(14, 87, 5)
  end
  it "has a getter and setter that retrieves the age" do
    apple = Apple.new(1, 2, 3)
    apple.age = 5
    expect(apple.age).to eq(5)
  end

  it "has a getter that retrieves the height" do
    apple = Apple.new(47, 4, 30)
    expect(apple.height).to eq(4)
    # expect(@apple1.height).to eq(1)
  end

  it "has a getter that retrieves the count" do
    apple = Apple.new(33, 65, 100)
    expect(apple.count).to eq(100)
  end

  it "raises an error if anyone directly tries to set the height" do
    apple = Apple.new(1, 2, 9)
    expect{apple.height = 4}.to raise_error(NoMethodError)
  end
  
  it "raises an error if anyone directly tries to change the apple count" do
    apple = Apple.new(435, 567, 243)
    expect{apple.count = 99}.to raise_error(NoMethodError)
  end

  it "adds one year to the age" do
    expect(@apple1.year_gone_by).to eq(15,7)
    # expect(@apple1.year_gone_by).to eq(7)
  end

  # it "raise the count by 2" do
  #   expect(@apple1.year_gone_by).to eq(7)
  # end
end