require 'rspec'
require 'clock_angle'

describe('clock') do
	it 'returns 0 degrees when given 12:00' do
		expect(clock('12:00')).to eq 0
	end

	it 'returns 180 degress when given 18:00' do
		expect(clock('18:00')).to eq 180
	end

	it 'returns the smallest angle for a whole hour input' do
		expect(clock('19:00')).to eq 150
	end

	it 'returns correct angle for inputs with half hours' do
		expect(clock('12:30')).to eq 180
	end

	it 'returns correct angle for 11:20' do
		expect(clock('11:20')).to eq 150
	end

	it 'returns correct angle for 21:45' do
		expect(clock('21:45')).to eq 0
	end

	it 'returns correct angle for 19:11' do
		expect(clock('19:11')).to eq 144
	end
end