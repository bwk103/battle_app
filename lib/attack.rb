class Attack

  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage(attack_strength)
  end

  private

  def attack_strength
    Kernel.rand(1..10)
  end
  
end
