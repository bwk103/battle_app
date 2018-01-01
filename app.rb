require 'sinatra/base'
require './lib/player'
require './lib/game'

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

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

end
