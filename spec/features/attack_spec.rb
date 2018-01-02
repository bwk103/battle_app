feature 'attacking', :type => :feature do

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ben attacked Bob'
  end

  scenario "an attack reduces the receiving player's HP by a random number" do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Your HP: 100"
    expect(page).to have_content "Your HP: 90"
  end

  scenario 'player 2 can attack player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Ben'
  end
end
