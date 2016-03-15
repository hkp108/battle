require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name1, with: 'Ash'
    fill_in :name2, with: 'Garry'
    click_button 'Fight'
    expect(page).to have_content 'Ash vs. Garry'
  end
end