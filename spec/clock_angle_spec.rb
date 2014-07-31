require 'rspec'
require 'clock_angle'

describe('clock') do
	it 'returns 0 degrees when given 12 pm' do
		expect(clock('12:00')).to eq 0
	end

	it 'returns 180 degress when given 6 pm' do
		expect(clock('18:00')).to eq 180
	end

	it 'returns the smallest angle for a whole hour input' do
		expect(clock('19:00')).to eq 150
	end
end