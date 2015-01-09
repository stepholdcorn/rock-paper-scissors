require 'rock'

describe Rock do 
	let(:rock){Rock.new}
	let(:computer) {double :computer, choice: true}

	it 'should win against scissors' do
		allow(computer).to receive(:choice).and_return('scissors')
		expect(rock.play(computer)).to eq 'Win'
	end
	
end