require 'sinatra/base'
require_relative 'computer'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

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
    @paper = Paper.new
    @computer = Computer.new
    @result = @paper.play(@computer)
  	erb :result_paper
  end

  get '/result_scissors' do
    @scissors = Scissors.new
    @computer = Computer.new
    @result = @scissors.play(@computer)
  	erb :result_scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
