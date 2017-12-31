require 'sinatra/base'
require 'player'

class BattleApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  post '/names' do
    $player1 = Player.new(name: params['player_1_name'])
    $player2 = Player.new(name: params['player_2_name'])
    redirect('/play')
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    erb(:attack)
  end

end
