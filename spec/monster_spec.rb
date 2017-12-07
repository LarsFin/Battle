require 'monster.rb'

describe Monster do

  let(:monster) { described_class.new('DEMON') }

  it "Should return the name of the monster" do
    expect(monster.name).to eq 'DEMON'
  end

  it "Should set the health of the monster and be able to return" do
    expect(monster.health).to eq Monster::DEFAULT_MONSTER_HP
  end

end
