feature 'players can heal themselves', type: :feature do
  before(:each) do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
  end

  scenario 'Players can select the Heal option' do
    expect(page).to have_button 'Heal'
  end

  scenario 'Player receives confirmation of selection' do
    multiple_attack(2)
    click_button 'Heal'
    expect(page).to have_content "Ben's HP has increased to 50"
  end

  scenario "Player's HP is increased" do
    multiple_attack(3)
    click_button 'Heal'
    expect(page).to have_content "Bob's HP has increased to 40"
  end
end
