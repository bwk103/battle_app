feature "viewing remaining hit points", :type => :feature do
  scenario "shows remaining hit points" do
    sign_in_and_play
    expect(page).to have_content 'Bob has 100 HP remaining'
  end
end
