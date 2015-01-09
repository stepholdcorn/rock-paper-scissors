require 'computer'

describe Computer do 
	let(:computer){Computer.new}

	it 'should be able to choose rock' do
		allow(computer).to receive(:random_number) { 0.1 }
		expect(computer.choice).to eq 'rock'
	end

	it 'should be able to choose paper' do
		allow(computer).to receive(:random_number) { 0.7 }
		expect(computer.choice).to eq 'paper'
	end

	it 'should be able to choose scissors' do
		allow(computer).to receive(:random_number) { 0.5 }
		expect(computer.choice).to eq 'scissors'
	end

end