# Creates Attack class
class Attack
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage(strength)
  end

  private

  def strength
    Kernel.rand(1..10)
  end
end
