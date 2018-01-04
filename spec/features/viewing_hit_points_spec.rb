feature 'viewing remaining hit points', type: :feature do
  scenario "shows players' own remaining hit points" do
    sign_in_and_play
    expect(page).to have_content "Ben's HP: 50"
  end

  scenario "shows opponent's remaining hit points" do
    sign_in_and_play
    expect(page).to have_content "Bob's HP: 50"
  end
end
