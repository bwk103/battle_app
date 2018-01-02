feature 'game ends', :type => :feature do

  scenario "when player 1 wins the game" do
    sign_in_and_play
    multiple_attack(18)
    click_button 'Attack'
    expect(page).to have_content 'Bob has been defeated! Ben wins!'
  end
end
