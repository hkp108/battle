require 'spec_helper'

feature 'Hit Points'do
  scenario 'See hit points of player 2' do
      sign_in_and_play
    expect(page).to have_content('20HP')
  end
end
