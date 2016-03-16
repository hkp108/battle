feature 'Attack' do
  scenario 'allow you to attack' do
    sign_in_and_play
    click_button('Click Me!')
    expect(page).to have_content('Ash attacks Garry!')
  end
end
