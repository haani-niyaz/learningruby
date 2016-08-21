#!/usr/bin/ruby

task_number = ARGV.shift.to_i


# Create  a new file
# Check if to-do is the same as counter 
# If the same, write to new file as done
# Else, write as is to new file
# Rename new-file to old file name

File.open('todo.txt','r') do |file|
	File.open('todo.txt.new','w') do |new_file|
		counter = 1
		file.readlines.each do |line|
			name, created, completed = line.chomp.split(',')
			if task_number == counter
				new_file.puts("#{name}, #{created}, #{Time.now}")
			else
				new_file.puts("#{name}, #{created}")
			end
			counter += 1
		end
	end
end

`mv todo.txt.new todo.txt`