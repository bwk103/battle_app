feature "Players can enter names into a form", :type => :feature do
  scenario "submitting player names" do
    visit('/')
    fill_in 'player_1_name', with: 'Ben'
    fill_in 'player_2_name', with: 'Lucinda'
    click_button 'Submit'
    expect(page).to have_content 'Ben vs Lucinda'
  end
end
