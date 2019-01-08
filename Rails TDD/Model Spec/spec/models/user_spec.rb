require 'rails_helper'
RSpec.describe User, type: :model do
  context "With valid attributes" do 
    it "should save" do 
      user = User.new(
        first_name: 'shane',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if first_name field is blank" do
      user = User.new(
        first_name: '', 
        last_name: 'chang', 
        email: 'schang@codingdojo.com')
      expect(user).to be_invalid
    end
    
    it "should not save if last_name field is blank" do
      user = User.new(
        first_name: "Kenny",
        last_name:'',
        email: "kenny@pham.com")
      expect(user).to be_invalid
    end  
    
    it "should not save if email already exists" do
      user = User.new(
        first_name: "Kenny",
        last_name: "Phame",
        email: "kenny@pham.com")
      user1 = User.new(
        first_name: "Kenny",
        last_name: "Phame",
        email: "kenny@pham.com")
      expect(user).to be_invalid
    end

    it "should not save if invalid email format" do 
      user = User.new(
        first_name:"Kenny",
        last_name:"Pham",
        email: "kennypham.com")
      expect(user).to be_invalid
    end
  end
end