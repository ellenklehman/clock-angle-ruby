require 'rspec'
require 'clock_angle'

describe('clock') do
	it 'returns 0 degrees when given 12:00' do
		expect(clock('12:00')).to eq "0.0\xC2\xB0"
	end

	it 'returns 180 degress when given 18:00' do
		expect(clock('18:00')).to eq "180.0\xC2\xB0"
	end

	it 'returns the smallest angle for a whole hour input' do
		expect(clock('19:00')).to eq "150.0\xC2\xB0"
	end

	it 'returns correct angle for inputs with half hours' do
		expect(clock('12:30')).to eq "165.0\xC2\xB0"
	end

	it 'returns correct angle for 11:20' do
		expect(clock('11:20')).to eq "140.0\xC2\xB0"
	end

	it 'returns correct angle for 22:30' do
		expect(clock('22.30')).to eq "135.0\xC2\xB0"
	end

	it 'returns correct angle for 15:40' do
		expect(clock('15:40')).to eq "130.0\xC2\xB0"
	end

	it 'accounts for hour hand movement' do
		expect(clock('5:15')).to eq "67.5\xC2\xB0"
	end

	it 'returns correct angle for 2:30' do
		expect(clock('2:30')).to eq "105.0\xC2\xB0"
	end

	it 'returns correct angle for 8:45' do
		expect(clock('8:45')).to eq "7.5\xC2\xB0"
	end
end