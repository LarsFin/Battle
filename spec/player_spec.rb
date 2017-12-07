require 'player.rb'

describe Player do
  let(:player) { described_class.new('TEST') }

  it "Should return the name of the player" do
    expect(player.name).to eq 'TEST'
  end

  it "Should returnt the selected character of the player" do
    expect(player.char).to eq nil
  end

  describe '#set_health' do
    it "Should set a health value" do
      player.char = 'templeknight'
      player.set_health
      expect(player.health).to eq 1000
    end
  end

end
