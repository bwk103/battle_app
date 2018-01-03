class Heal < Attack

  def run
    @player.recover_hit_points(strength)
  end

end
