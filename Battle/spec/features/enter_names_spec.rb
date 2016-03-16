require 'spec_helper'

RSpec.feature 'Creating new player names', :type => :feature do
  scenario 'User enters name' do
    visit '/'

    fill_in "Player 1", :with => 'Bob'
    fill_in "Player 2", :with => 'Tina'
    click_button 'Create Player'

    expect(page).to have_text('Player was successfully created')
  end
end
