
feature 'See HP', :type => :feature do
  scenario 'User sees HP' do
    sign_in_and_play
    expect(page).to have_text('Bob has 60 HP')
  end
end
