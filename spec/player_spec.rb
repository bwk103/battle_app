require 'player'
describe Player do
  let(:player1) { described_class.new('Ben') }
  let(:player2) { described_class.new('Bob') }

  describe '#name' do
    it "returns the player's name" do
      expect(player1.name).to eq 'Ben'
    end
  end

  describe '#hit_points' do
    it "returns the player's remaining hit points" do
      expect(player1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#asleep' do
    it 'states whether the player is currently awake' do
      expect(player1.asleep).to eq false
    end
  end

  describe '#received_damage' do
    it "reduces the player's hit points" do
      expect { player1.receive_damage(10) }.to change { player1.hit_points }.by(-10)
    end
  end

  describe '#paralysis' do
    it 'paralysis the player and makes them miss a turn' do
      player1.paralysis
      expect(player1.paralysed).to eq true
    end
  end

  describe '#recover_hit_points' do
    it "increases the player's hit points" do
      player1.receive_damage(20)
      expect { player1.recover_hit_points(10) }.to change { player1.hit_points }.by 10
    end

    it "cannot increase the player's hit points above the maximum limit" do
      expect { player1.recover_hit_points(50) }.to change { player1.hit_points }.by 0
    end
  end

  describe '#hypnotise' do
    it 'sends the player to sleep' do
      expect { player1.hypnotise }.to change { player1.asleep }.from(false).to(true)
    end
  end
end
