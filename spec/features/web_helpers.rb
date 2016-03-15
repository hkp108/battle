def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'Ash'
  fill_in :name2, with: 'Garry'
  click_button 'Fight'
end