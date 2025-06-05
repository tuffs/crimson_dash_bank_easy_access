require 'rails_helper'

RSpec.feature "User Sign Up Feature", type: :feature do
  scenario "User signs up with valid data" do
    visit new_user_registration_path
    fill_in "First name", with: "Jane"
    fill_in "Last name", with: "Doe"
    fill_in "Username", with: "janedoe"
    fill_in "Email", with: "janedoe@example.com"
    fill_in "Password", with: "password123"
    fill_in "Password confirmation", with: "password123"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully")
  end
end