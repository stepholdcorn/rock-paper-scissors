require 'rock'

describe Rock do 
	let(:rock){Rock.new}
	let(:computer) {double :computer, choice: true}

	it 'should win against scissors' do
		allow(computer).to receive(:choice).and_return('scissors')
		expect(rock.play(computer)).to eq 'Win'
	end

	it 'should lose against paper' do
		allow(computer).to receive(:choice).and_return('paper')
		expect(rock.play(computer)).to eq 'Lose'
	end

	it 'should draw against rock' do
		allow(computer).to receive(:choice).and_return('rock')
		expect(rock.play(computer)).to eq 'Draw'
	end
	
end