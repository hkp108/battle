require 'spec_helper'

feature 'Hit Points'do
  scenario 'See hit points of player 2' do
    visit '/'
    fill_in :name1, with: 'Ash'
    fill_in :name2, with: 'Garry'
    click_button 'Fight'
    expect(page).to have_content('20HP')
  end
end
