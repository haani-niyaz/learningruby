#!/usr/bin/ruby

=begin

File Options:
-------------

r - Read only. The file must exist.
w - Create an empty file for writing.
a - Append to a file.The file is created if it does not exist.
r+ - Open a file for update both reading and writing. The file must exist.
w+ - Create an empty file for both reading and writing.
a+ - Open a file for reading and appending. The file is created if it does not exist.
=end


File.open("todo.txt", "r") do |file| 
	counter = 1

	file.readlines.each do |line|
		name, created, completed =  line.chomp.split(',')
		printf("%3d - %s\n", counter, name)
		printf("      Created 	: %s\n", created)
		unless completed.nil?
			printf("      Completed : %s\n", completed)
		end
		counter += 1	
	end
end	