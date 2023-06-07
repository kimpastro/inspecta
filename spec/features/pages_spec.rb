require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  feature 'Acessing home page' do
    scenario 'User receives a unique URL' do
      visit root_path

      expect(page).to have_content 'This is your unique URL:'
    end
  end
end
