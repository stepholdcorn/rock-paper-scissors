require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, '..', "views") }

  get '/' do
    erb :index
  end

  get '/result_rock' do
  	erb :result_rock
  end

  get '/result_paper' do
  	erb :result_paper
  end

  get '/result_scissors' do
  	erb :result_scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
