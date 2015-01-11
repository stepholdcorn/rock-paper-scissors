require 'sinatra/base'
require_relative 'computer'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, '..', "views") }
set :public_dir, Proc.new{File.join(root, '..', "public")}
set :public_folder, 'public'
enable :sessions

game = Game.new

  get '/' do
    erb :index
  end

  post '/' do
    name = params[:name]
    if name == ""
      erb :name_error
    else
      @player = Player.new
      @player.name = name
      session[:player] = @player
      erb :game_mode
    end
  end

  get '/game_mode' do
    @player = session[:player] 
    erb :game_mode
  end

  get '/index' do
    erb :index
  end

  get '/name_error' do
    erb :name_error
  end

  get '/selection' do
    @player = session[:player] 
    erb :selection
  end

  get '/selection_multi' do
    @player = session[:player]
    erb :selection_multi
  end

  get '/result_rock' do
    @player = session[:player]
  	@rock = Rock.new
  	@computer = Computer.new
  	@result = @rock.play(@computer)
  	erb :result_rock
  end

  get '/result_paper' do
    @player = session[:player]
    @paper = Paper.new
    @computer = Computer.new
    @result = @paper.play(@computer)
  	erb :result_paper
  end

  get '/result_scissors' do
    @player = session[:player]
    @scissors = Scissors.new
    @computer = Computer.new
    @result = @scissors.play(@computer)
  	erb :result_scissors
  end

  get '/result_rock_multi' do
    @player = session[:player]
    @rock = Rock.new
    erb :result_rock_multi
  end

  get '/result_paper_multi' do
    @player = session[:player]
    @rock = Paper.new
    erb :result_paper_multi
  end

  get '/result_scissors_multi' do
    @player = session[:player]
    @rock = Scissors.new
    erb :result_scissors_multi
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
