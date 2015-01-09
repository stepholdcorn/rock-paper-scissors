require 'sinatra/base'
require_relative 'computer'
require_relative 'rock'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, '..', "views") }

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    if @name == ""
      erb :name_error
    else
      erb :selection
    end
  end

  get '/selection' do
    erb :selection
  end

  get '/result_rock' do
  	@rock = Rock.new
  	@computer = Computer.new
  	@result = @rock.play(@computer)
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
