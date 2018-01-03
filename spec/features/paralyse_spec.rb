feature 'paralyse', :type => :feature do

  scenario "players can try to paralyse their opponent" do
    sign_in_and_play
    expect(page).to have_button 'Paralyse'
  end

  scenario "if successful, the attacking player receives confirmation" do
    allow(Kernel).to receive(:rand).and_return(1)
    sign_in_and_play
    click_button 'Paralyse'
    message = 'Ben tried to paralyse Bob and it was successful'
    expect(page).to have_content message
  end

  scenario "if successful, the receiving player misses a turn" do
    allow(Kernel).to receive(:rand).and_return(1)
    sign_in_and_play
    click_button 'Paralyse'
    click_link 'OK'
    expect(page).to have_content "Ben's turn"
  end

  scenario "if unsuccessful, the attacking player receives confirmation" do
    allow(Kernel).to receive(:rand).and_return(3)
    sign_in_and_play
    click_button 'Paralyse'
    message = 'Ben tried to paralyse Bob, but it was unsuccessful'
    expect(page).to have_content message
  end

  scenario "if unsuccessful, the receiving player does not miss a turn" do
    allow(Kernel).to receive(:rand).and_return(3)
    sign_in_and_play
    click_button 'Paralyse'
    click_link 'OK'
    expect(page).to have_content "Bob's turn"
  end
end
