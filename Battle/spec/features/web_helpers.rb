def sign_in_and_play
  visit '/'

  fill_in :warrior_1, with: 'Bob'
  fill_in :warrior_2, with: 'Tina'
  click_button 'Create Players'
end
