class Game

  attr_reader :current_player, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @opponent = player2
  end

  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
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
    @current_player, @opponent = @opponent, @current_player
  end

  def game_over?
    opponent.hit_points == 0
  end

end
