
feature 'Creating new players', :type => :feature do
  scenario 'User enters name' do
    sign_in_and_play
    expect(page).to have_text('Warriors Bob and Tina were successfully created!')
  end
end
