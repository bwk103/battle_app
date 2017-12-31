feature "Players can enter names into a form", :type => :feature do
  scenario "submitting player names" do
    sign_in_and_play
    expect(page).to have_content 'Ben vs Bob'
  end
end
