feature 'game ends', type: :feature do
  scenario 'when player 1 wins the game' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    multiple_attack(8)
    click_button 'Scratch'
    expect(page).to have_content 'Ben wins!'
  end
end
