require 'paralyse'

describe Paralyse do
  let(:paralyse) { described_class }
  let(:player) { double(:player) }

  describe '.run' do
    it 'randomly paralysis the player' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(player).to receive :paralysis
      paralyse.run(player)
    end

    it 'randomly does not paralyse the player' do
      allow(Kernel).to receive(:rand).and_return(3)
      expect(player).not_to receive :paralysis
      paralyse.run(player)
    end
  end
end
