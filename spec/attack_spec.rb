require 'attack'

describe Attack do
  let(:attack) { described_class }
  let(:player) { double(:player) }

  describe ".run" do
    it "causes damage to the player" do
      expect(player).to receive :receive_damage
      attack.run(player)
    end
  end

end
