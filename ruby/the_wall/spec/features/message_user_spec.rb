require 'rails_helper'
feature "guest user creates an account" do
  scenario "successfully creates a new user account" do
    visit new_user_path
    fill_in "user[username]", with: "kenchose"
    click_button "Create User"
    expect(page).to have_content "User successfully created"
  end

# feature "user"
end