def sign_in_and_play
  visit ('/')
  fill_in :player_1, with: 'Chris'
  fill_in :player_2, with: 'Sachin'
  click_button('Start Battle')
end

def attack
  click_link 'Attack'
end
