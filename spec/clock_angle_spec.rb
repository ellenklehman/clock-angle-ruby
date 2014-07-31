require 'rspec'
require 'clock_angle'

describe('clock') do
	it 'returns 0 degrees when given 12 pm' do
		expect(clock('12:00')).to eq '0'
	end

end