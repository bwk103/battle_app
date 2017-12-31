require 'sinatra/base'

class BattleApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params['player_1_name']
    @player2 = params['player_2_name']
    erb(:play)
  end

end
