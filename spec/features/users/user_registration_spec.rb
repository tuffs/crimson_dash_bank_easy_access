require 'rails_helper'

RSpec.feature "User Sign Up", type: :feature do
  describe "User Registration" do
    it 'has a user fail registration validation' do
      visit new_user_registration_path

      # Submit empty form
      click_button 'Sign up'
      expect(page).to have_content("First name can't be blank")
      expect(page).to have_content("Last name can't be blank")
      expect(page).to have_content("Email can't be blank")

      # Test email uniqueness
      create(:user, email: "taken@example.com")
      fill_in 'Email', with: "taken@example.com"
      fill_in 'First name', with: "John" # Required field
      fill_in 'Last name', with: "Doe"   # Required field
      fill_in 'Password', with: "password123" # Required field
      fill_in 'Password confirmation', with: "password123" # Required field
      click_button 'Sign up'
      expect(page).to have_content("Email has already been taken")
    end
  end
end