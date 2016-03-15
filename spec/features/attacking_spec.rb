require 'spec_helper'

feature 'Attacking a player' do
  scenario 'Can attack player 2 and get a confirmation' do
    sign_in_and_play
    attack
    expect(page).to have_content('Chris attacked Sachin')
  end
end
