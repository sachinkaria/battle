
feature 'See HP' do

  scenario 'User sees HP' do
    sign_in_and_play
    expect(page).to have_text('Bob has 60 HP')
    expect(page).to have_text('Tina has 60 HP')
  end

  scenario 'after being hit, shows new HP' do
  	sign_in_and_play
  	attacking
	 expect(page).to have_text('Tina has 50 HP')
  end

end
