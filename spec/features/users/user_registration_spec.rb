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
      expect(page).to have_content("Email already taken")
    end
  end
end