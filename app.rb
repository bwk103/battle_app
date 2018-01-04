require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'
require './lib/paralyse'
require './lib/heal'
require './lib/hypnosis'

# Creates a Sinatra App using Modular style
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

  post '/paralyse' do
    Paralyse.run(@game.opponent)
    if @game.opponent.paralysed
      redirect('/paralysed')
    else
      redirect('/missed')
    end
  end

  get '/paralysed' do
    @game.opponent.recover
    erb(:paralyse)
  end

  get '/missed' do
    @game.change_player
    erb(:missed)
  end

  get '/heal' do
    Heal.run(@game.current_player)
    @game.change_player
    erb(:heal)
  end

  get '/hypnosis' do
    Hypnosis.new(@game.opponent)
    @game.opponent.recover
    erb(:hypnosis)
  end

  get '/game-over' do
    erb(:finish)
  end
end
