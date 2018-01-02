require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class BattleApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/names' do
    $game = Game.new(Player.new(params['player_1_name']),
      Player.new(params['player_2_name']))
    redirect('/play')
  end

  post '/attack' do
    Attack.run($game.opponent)
    if $game.game_over?
      redirect('/game-over')
    else
      redirect('/attack')
    end
  end

  get '/attack' do
    @game = $game
    @game.change_player
    erb(:attack)
  end

  get '/game-over' do
    @game = $game
    erb(:finish)
  end

end
