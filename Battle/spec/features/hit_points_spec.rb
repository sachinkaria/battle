
feature 'Creating new players', :type => :feature do
  scenario 'User enters name' do
    visit '/'

    fill_in :warrior_1, with: 'Bob'
    fill_in :warrior_2, with: 'Tina'
    click_button 'Create Players'
    expect(page).to have_text('Bob has 60 HP')
  end
end
