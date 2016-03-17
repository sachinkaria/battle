require 'game'

describe Game do
  subject(:bob) { double :bob }
  subject(:tina) { double :tina }
  subject(:game) {described_class.new(bob, tina)}
  
  	describe '#initialize' do

  		it 'with player1' do
  			expect(game.player_1).to eq bob
  		end

  		it 'with player2' do
  			expect(game.player_2).to eq tina
  		end

  		it 'with current player as player1' do
  			expect(game.current_player).to eq bob
  		end
  	end

	describe '#attack' do

    	it 'a player, which reduces points' do
      		expect(tina).to receive(:lose_hp)
      		game.attack
    	end

	end

    describe '#switch_player' do

    	it "changes the player" do
    		game.switch_player
    		expect(game.current_player).to eq tina
    	end

    end

    describe '#current_opponent' do

    	it 'returns the current opponent' do
    		expect(game.current_opponent).to eq tina
    	end
    end


end
