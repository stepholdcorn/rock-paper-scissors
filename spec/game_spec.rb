require 'game'

describe Game do 

let(:game) {Game.new}
let(:player1) {double :player1}
let(:player2) {double :player2}

	it 'should not have any players on initialization' do
		expect(game.player_1).to eq(nil)
	end

	it 'should be able to add a player' do
		game.add_player(player1)
		expect(game.player_1).to eq(player1)
	end

	it 'should be able to add two players' do
		game.add_player(player1)
		game.add_player(player2)
		expect(game.player_2).to eq(player2)
	end

end