feature 'players can be sent to sleep', :type => :feature do

  before(:each) do
    sign_in_and_play
  end

  scenario 'players can select Hypnosis' do
    expect(page).to have_button 'Hypnosis'
  end

  scenario 'attacking player will receive confirmation' do
    click_button 'Hypnosis'
    expect(page).to have_content 'Ben hypnotised Bob and sent them to sleep'
  end

  scenario 'receiving players will miss one turn' do
    click_button 'Hypnosis'
    click_link 'OK'
    expect(page).to have_content "Ben's turn"
  end
end
