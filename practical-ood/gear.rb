require_relative 'wheel'

class Gear
	attr_reader :chainring, :cog, :wheel

	#def initialize(chainring,cog, wheel=nil)
	def initialize(args)
		@chainring = args[:chainring]
		@cog			 = args[:cog]
		@wheel     = args[:wheel]
	end

	def ratio
		chainring / cog.to_f
	end

	def gear_inches
		ratio * wheel.diameter
	end

end

#puts Gear.new(52,11,Wheel.new(26,1.5)).gear_inches

puts Gear.new(
	:chainring => 52,
	:cog 			 => 11,
	:wheel     => Wheel.new(26,1.5)).gear_inches