#!/usr/bin/env ruby

=begin
Example on how to setup option parser for db_backup.rb script

=end

require "optparse"

options = {}

option_parser = OptionParser.new do |opts|
	# Create a switch
	# String with a dash followed by no space is a switch
	# Multiple comma seperated options mean the same thing
	opts.on("-i", "--iteration") do
		options[:iteration] = true
	end





	servers = {
		'dev' => '127.0.0.1',
		'qa'  => 'qa1.example.com'
	}

	# Create a flag as "--server dev"
	opts.on("--server  SERVER", servers) do |server|

	# stores '`27.0.0.1'
	options[:server] = server
		
	end


	# Create a flag
	opts.on("-u USER", /^.+\..+$/) do |user|
		# unless user =~ /^.+\..+$/
		# 	raise ArgumentError, "User must be in the  'first.name format'"
		# end
		options[:user] = user
		
	end

	# Create a flag
	# string with dash followed by a space and then another string means flag
	opts.on("-p PASSWORD") do |password|
		options[:password] = password
	end

end

option_parser.parse!
puts options.inspect