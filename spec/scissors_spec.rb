require 'scissors'

describe Scissors do 
	let(:scissors){Scissors.new}
	let(:computer) {double :computer, choice: true}

	it 'should win against paper' do
		allow(computer).to receive(:choice).and_return('paper')
		expect(scissors.play(computer)).to eq 'Win'
	end

	it 'should lose against rock' do
		allow(computer).to receive(:choice).and_return('rock')
		expect(scissors.play(computer)).to eq 'Lose'
	end

	it 'should draw against scissors' do
		allow(computer).to receive(:choice).and_return('scissors')
		expect(scissors.play(computer)).to eq 'Draw'
	end
	
end