require 'rails_helper'

RSpec.describe User, type: :model do
  context "With valid attribute" do
    it "should save" do
      expect(build(:user)).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if username is not unique" do
      create(:user)
      expect(build(:user)).to be_invalid
    end

    it "should not save if username is not longer than 5 characters" do
      expect(build(:user, username:"a")).to be_invalid
    end

    it "should not save if username is blank" do
      expect(build(:user, username:"")).to be_invalid
    end
  end
end
