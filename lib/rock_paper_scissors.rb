require 'sinatra/base'
require_relative 'computer'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, '..', "views") }
set :public_dir, Proc.new{File.join(root, '..', "public")}
set :public_folder, 'public'
enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    if @name == ""
      erb :name_error
    else
      session[:name] = @name
      erb :game_mode
    end
  end

  get '/game_mode' do
    @name = session[:name] 
    erb :game_mode
  end

  get '/index' do
    erb :index
  end

  get '/name_error' do
    erb :name_error
  end

  get '/selection' do
    @name = session[:name] 
    erb :selection
  end

  get '/result_rock' do
    @name = session[:name]
  	@rock = Rock.new
  	@computer = Computer.new
  	@result = @rock.play(@computer)
  	erb :result_rock
  end

  get '/result_paper' do
    @name = session[:name]
    @paper = Paper.new
    @computer = Computer.new
    @result = @paper.play(@computer)
  	erb :result_paper
  end

  get '/result_scissors' do
    @name = session[:name]
    @scissors = Scissors.new
    @computer = Computer.new
    @result = @scissors.play(@computer)
  	erb :result_scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
