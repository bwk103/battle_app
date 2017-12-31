feature 'attacking', :type => :feature do

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ben attacked Bob'
  end
end
