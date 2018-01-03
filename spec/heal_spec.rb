require 'heal'

describe Heal do
  let(:heal) { described_class }
  let(:player) { double(:player) }

  describe "#run" do
    it "increases the player's HP" do
      expect(player).to receive :recover_hit_points
      heal.run(player)
    end
  end
end
