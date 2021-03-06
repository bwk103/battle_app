require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player, hit_points: 0) }

  describe '#player1' do
    it 'returns player1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'returns player2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#current_player' do
    it 'returns player 1 at the start of the game' do
      expect(game.current_player).to eq player1
    end
  end

  describe '#change_player' do
    it 'changes the current_player' do
      expect(game.current_player).to eq player1
      game.change_player
      expect(game.current_player).to eq player2
    end
  end

  describe '#game_over?' do
    it "the game is over if one player's HP is 0" do
      expect(game.game_over?).to eq true
    end

    it "returns false if neither player's HP is 0" do
      game = described_class.new(player1, player1)
      allow(player1).to receive(:hit_points).and_return(30)
      expect(game.game_over?).to be false
    end
  end
end
