require 'attack'

describe Attack do
  let(:attack) { described_class }
  let(:player) { double(:player) }
  let(:Kernel) { double(:kernel) }

  describe '.run' do
    it 'causes damage to the player' do
      expect(player).to receive :receive_damage
      attack.run(player)
    end

    it 'can send differing strength attacks to the player' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(player).to receive(:receive_damage).with(2)
      attack.run(player)
    end
  end
end
