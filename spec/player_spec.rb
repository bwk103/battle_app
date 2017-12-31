require 'player'
describe Player do

  let(:player) { described_class.new(name:'Ben')}

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq 'Ben'
    end
  end
end
