#!/usr/bin/env ruby

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


new_task = ARGV.shift


File.open("todo.txt", "a") do |file|  
	file.puts "#{new_task}, #{Time.now.strftime('%m-%d-%Y')}"
	puts 'Task Added.'
end

