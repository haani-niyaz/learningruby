require_relative '../gear'
require_relative '../wheel'

require 'test/unit'

class TestGear < Test::Unit::TestCase
	def test_gear()
		gear = Gear.new(52,11,Wheel.new(26,1.5))
		assert_equal(gear.gear_inches, 137.0909090909091)
	end

end