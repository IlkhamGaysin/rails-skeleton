require 'rails_helper'

feature 'Home page' do
  scenario 'visitor observes home page', js: true do
    visit root_path

    expect(page).to have_content('Home')
  end
end
