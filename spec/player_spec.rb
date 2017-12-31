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

  describe "#attack" do
    it "damages the other player" do
      expect(player2).to receive :receive_damage
      player1.attack(player2)
    end
  end

  describe "#attacked" do
    it "reduces the player's hit points by 10" do
      expect { player1.attack(player2) }.to change { player2.hit_points }.by -10
    end
  end
end
