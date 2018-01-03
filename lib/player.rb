class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hit_points, :paralysed, :asleep

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @paralysed = false
    @asleep = false
  end

  def receive_damage(power)
    @hit_points -= power
  end

  def paralysis
    @paralysed = true
  end

  def recover
    @paralysed = false
    @asleep = false
  end

  def recover_hit_points(amount)
    return @hit_points = 100 if exceeds_max_hp?(amount)
    @hit_points += amount
  end

  def hypnotise
    @asleep = true
  end

  private

  def exceeds_max_hp?(amount)
    @hit_points + amount > DEFAULT_HIT_POINTS
  end
end
