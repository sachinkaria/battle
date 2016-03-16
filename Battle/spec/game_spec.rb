require 'game'

describe Game do
  subject(:game) {described_class.new(bob, tina)}
  subject(:bob) {Player.new('Bob')}
  subject(:tina) {Player.new('Tina')}

    it 'attacks a player' do
      expect(bob).to receive(:lose_hp)
      game.attack(bob)
    end



end
