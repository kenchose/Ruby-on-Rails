require 'rails_helper'

RSpec.describe Message, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:message)).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if message is blank" do
      expect(build(:message, comment:'')).to be_invalid
    end

    it "should not save if message is not longer than 10 characters" do
      expect(build(:message, comment:"abc")).to be_invalid
    end

    # it 'should not wsave if '
  end
end
