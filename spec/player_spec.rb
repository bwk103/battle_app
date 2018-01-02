require 'player'
describe Player do

  let(:player1) { described_class.new('Ben')}
  let(:player2) { described_class.new('Bob')}

  describe "#name" do
    it "returns the player's name" do
      expect(player1.name).to eq 'Ben'
    end
  end

  describe "#hit_points" do
    it "returns the player's remaining hit points" do
      expect(player1.hit_points).to eq 100
    end
  end

  describe "#received_damage" do
    it "reduces the player's hit points" do
      expect { player1.receive_damage(10) }.to change { player1.hit_points }.by -10
    end
  end
end
