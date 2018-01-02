feature "switching players", :type => :feature do
  scenario "it switches from player 1 to player 2" do
    sign_in_and_play
    expect(page).to have_content "Ben's turn"
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "Bob's turn"
  end
end
