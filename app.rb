require 'sinatra/base'

class BattleApp < Sinatra::Base

  get '/' do
    'Hello world!'
  end

end
