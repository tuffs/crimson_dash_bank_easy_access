require 'rails_helper'
include ApplicationHelper

RSpec.describe "Home Page (static#index)", type: :feature do
  before do
    visit root_path
  end

  describe 'title' do
    it 'has a Header DIV' do
      expect(page).to have_css('div#header')
    end

    it 'shows the App Name on the Home Page' do
      expect(page).to have_content(app_name)
    end

    it 'shows the App Subtitle on the Home Page' do
      expect(page).to have_content(app_subtitle)
    end
  end

  describe 'content' do
    it 'has an Introduction Section' do
      expect(page).to have_css('div#homepage_introduction')
    end

    it 'has an Introduction Section Header: Who Are We?' do
      expect(page).to have_css('h3#introduction_section_header__who_are_we', text: 'Who Are We?')
    end

    it 'has an Introduction Section Header: Why Join Us?' do
      expect(page).to have_css('h3#introduction_section_header__why_join_us', text: 'Why Join Us?')
    end

    it 'has an Introduction Section Header: What\'s Our Plan?' do
      expect(page).to have_css('h3#introduction_section_header__whats_our_plan', text: 'What\'s Our Plan?')
    end
  end
end