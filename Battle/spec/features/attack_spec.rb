feature 'Attack Player', :type => :feature do
  scenario 'deals blow' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_text("You have attacked Bob")
  end
end
