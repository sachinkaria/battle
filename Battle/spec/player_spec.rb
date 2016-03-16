require 'player'
describe Player do
  subject(:player) {described_class.new(name)}
  let(:name){"Bob"}

    it 'returns name of player when called' do
      expect(player.name).to eq name
    end
end