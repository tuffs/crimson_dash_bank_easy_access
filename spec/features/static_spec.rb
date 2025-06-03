require 'rails_helper'
include ApplicationHelper

RSpec.describe "Static pages", type: :feature do
  scenario "visiting the index page shows the app name" do
    visit root_path
    expect(page).to have_content(app_name)
  end
end