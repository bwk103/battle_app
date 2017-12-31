feature 'attacking', :type => :feature do

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ben attacked Bob'
  end

  scenario "an attack reduces player 2's HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Bob's HP: 100"
    expect(page).to have_content "Bob's HP: 90"
  end
end
