RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end


RSpec.feature "You lose: #29", :type => :feature do

  let(:player1) { double:Player, name: "test user 1", hp: Game::MAX_HP, sustain_damage: nil }
  let(:loser) { Player.new(name: "loser", hp: Game::DAMAGE, damage:Game::DAMAGE)}


  before (:each) do
    Game.reset
    sign_in_and_play(player1.name, loser.name)
    visit "/play"
    10.times do
      click_button("Attack")
      click_button("Back to Battle!")
    end
    click_button("Attack")
  end

  scenario "lose page", :broken => true do
    expect(page).to have_text("You lose: #{loser.name}")
  end

  scenario "start new game", :broken => true do
    expect(page).to have_button("Start new game")
  end

end
