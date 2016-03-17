feature 'Attack Player' do

  scenario 'deals blow' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_text("Tina now has 50 HP")
  end

  scenario 'goes back to play screen after attack' do
  	sign_in_and_play
    attacking
	expect(page).to have_text("Bob VS Tina")
  end

  scenario 'player 2 dies' do
    sign_in_and_play
    10.times{attacking}
    click_button 'Attack!'
    expect(page).to have_text("is now dead!")
  end

end
