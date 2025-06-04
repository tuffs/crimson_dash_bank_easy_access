require 'rails_helper'
include ApplicationHelper

RSpec.describe "Home Page (static#index)", type: :feature do
  before do
    visit root_path
  end

  describe 'Header' do
    it 'Header DIV' do
      expect(page).to have_css('div#header')
    end

    it 'shows the App Name on the Home Page' do
      expect(page).to have_content(app_name)
    end

    it 'shows the App Subtitle on the Home Page' do
      expect(page).to have_content(app_subtitle)
    end
  end

  describe 'content Headers and Text' do
    it 'Introduction Section DIV' do
      expect(page).to have_css('div#homepage_introduction')
    end

    it 'Introduction Section Header: Who Are We?' do
      expect(page).to have_css(
        'h3#introduction_section_header__who_are_we', 
        text: 'Who Are We?'
      )
    end

    it 'Who Are We? section with text' do
      expect(page).to have_css('p#introduction_section_text__who_are_we')
    end

    it 'Introduction Section Header: Why Join Us?' do
      expect(page).to have_css(
        'h3#introduction_section_header__why_join_us',
        text: 'Why Join Us?'
      )
    end

    it 'Why Join Us? section with text' do
      expect(page).to have_css('p#introduction_section_text__why_join_us')
    end

    it 'Introduction Section Header: What\'s Our Plan?' do
      expect(page).to have_css(
        'h3#introduction_section_header__whats_our_plan',
        text: 'What\'s Our Plan?'
      )
    end

    it 'What\'s Our Plan? section with text' do
      expect(page).to have_css('p#introduction_section_text__whats_our_plan')
    end
  end
end