require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe "#attack" do
    it "attacks a player" do
      expect(player1).to receive :receive_damage
      game.attack(player1)
    end
  end
end
