require 'game'

describe Game do
  subject(:game) {described_class.new}
  subject(:player) {Player.new('Bob')}
    it 'attacks a player' do
      expect(player).to receive(:lose_hp)
      game.attack(player)
    end

end
