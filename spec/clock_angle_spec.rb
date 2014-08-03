require 'rspec'
require 'clock_angle'

describe('clock') do
	it 'returns broadly correct degree for whole hour input' do
		expect(clock('12:00')).to eq "0.0\xC2\xB0"
	end

	it 'returns the smallest angle for a whole hour input' do
		expect(clock('19:00')).to eq "150.0\xC2\xB0"
	end

	it 'returns correct angle for inputs with half hours' do
		expect(clock('12:30')).to eq "165.0\xC2\xB0"
	end

	it 'returns precise angle for all potential times' do
		expect(clock('11:20')).to eq "140.0\xC2\xB0"
	end
end