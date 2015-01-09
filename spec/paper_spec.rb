require 'paper'

describe Paper do 
	let(:paper){Paper.new}
	let(:computer) {double :computer, choice: true}

	it 'should win against rock' do
		allow(computer).to receive(:choice).and_return('rock')
		expect(paper.play(computer)).to eq 'Win'
	end

	it 'should lose against scissors' do
		allow(computer).to receive(:choice).and_return('scissors')
		expect(paper.play(computer)).to eq 'Lose'
	end

	it 'should draw against paper' do
		allow(computer).to receive(:choice).and_return('paper')
		expect(paper.play(computer)).to eq 'Draw'
	end
	
end