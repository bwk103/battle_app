require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class BattleApp < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create_game(Player.new(params['player_1_name']),
      Player.new(params['player_2_name']))
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    Attack.run(@game.opponent)
    if @game.game_over?
      redirect('/game-over')
    else
      redirect('/attack')
    end
  end

  get '/attack' do
    @game.change_player
    erb(:attack)
  end

  get '/game-over' do
    erb(:finish)
  end

end
