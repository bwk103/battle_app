class Game
  attr_reader :current_player
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def change_player
    @current_player = other_player(@current_player)
  end

  private

  def other_player(a_player)
    @players.select {|player| player!= a_player }.first
  end

end
