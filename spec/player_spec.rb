require 'player'

describe Player do

	let(:player) {Player.new}
	
	it 'should not have a name on initialization' do
		expect(player).not_to have_name
	end

	it 'should be able to have a name' do
		player.name = 'Steph'
		expect(player.name).to eq('Steph')
	end

	it 'should know when it has a name' do
		player.name = 'Steph'
		expect(player).to have_name
	end

	it 'should not have made a choice on initialization' do
		expect(player).not_to have_choice
	end

	it 'should be able to make a choice' do
		player.choice = 'Rock'
		expect(player.choice).to eq('Rock')
	end

	it 'should know when it has made a choice' do
		player.choice = 'Rock'
		expect(player).to have_choice
	end

end

