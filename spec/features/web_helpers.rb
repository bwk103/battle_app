def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Ben'
  fill_in 'player_2_name', with: 'Bob'
  click_button 'Submit'
end

def single_attack
  click_button 'Attack'
  click_link 'OK'
end

def multiple_attack(number)
  number.times { single_attack }
end
