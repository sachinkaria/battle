require 'spec_helper'

feature 'Checking hit points' do
  scenario 'Returns player 2s hit points' do
    visit ('/')
    fill_in :player_1, with: 'Chris'
    fill_in :player_2, with: 'Sachin'
    click_button('Start Battle')
    expect(page).to have_content('Sachin has 60/60 HP')
  end
end