require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe "#player1" do
    it "returns player1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "returns player2" do
      expect(game.player2).to eq player2
    end
  end

  describe "#attack" do
    it "attacks a player" do
      expect(player1).to receive :receive_damage
      game.attack(player1)
    end
  end
end
