require 'player'
describe Player do
  subject(:bob) {described_class.new('Bob')}
  subject(:tina) {described_class.new('Tina')}
    it 'returns name of player when called' do
      expect(bob.name).to eq 'Bob'
      expect(tina.name).to eq 'Tina'
    end

    describe 'attack' do
      it 'attacks player 2' do
        allow(tina).to receive(:lose_hp)
        bob.attack(tina)
      end

      it 'decreases player 2 hp by 10' do
        expect{bob.attack(tina)}.to change{tina.hp}.by -Player::DAMAGE
      end
    end
end
