require 'sinatra/base'

class BattleApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    erb(:play)
  end

  post '/names' do
    session['player1'] = params['player_1_name']
    session['player2'] = params['player_2_name']
    redirect('/play')
  end

end
