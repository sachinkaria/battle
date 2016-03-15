require 'player'

describe Player do
  subject(:sachin) {Player.new('Sachin')}
  it 'Returns player name' do
    expect(sachin.name).to eq"Sachin"
  end
end