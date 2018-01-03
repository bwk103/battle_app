class Paralyse < Attack

  def run
    @player.paralysis unless missed?
  end

  private

  def missed?
    Kernel.rand(1..3) == 3
  end
end
