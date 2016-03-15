require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1, with: 'Chris'
    fill_in :player_2, with: 'Sachin'
    click_button('Start Battle')

    expect(page).to have_content('Chris vs. Sachin')
  end
end