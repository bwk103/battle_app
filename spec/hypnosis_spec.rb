require 'hypnosis'
describe Hypnosis do
  let(:hypnosis) { described_class }
  let(:player) { double(:person) }

  describe '#run' do
    it 'send the receiving player to sleep' do
      expect(player).to receive :hypnotise
      hypnosis.run(player)
    end
  end
end
