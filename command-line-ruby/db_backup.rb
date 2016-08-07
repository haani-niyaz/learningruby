#!/usr/bin/env ruby

=begin
'env' takes an argument which is the name of the command to run.
It searches the path for the command and runs it. This way
as long as ruby is in our path somewhere the script will run.

=end


databases = {
	:big_client => {
		:database => 'world',
		:username => 'root',
		:password => 'root'
	},
	:small_client => {
		:database => 'test',
		:username => 'root',
		:password => 'root'	
	}
}


end_of_iter = ARGV.shift

puts end_of_iter

databases.each do |name,config|
	if end_of_iter.nil?
		backup_file = config[:database] + '_' + Time.now.strftime('%Y%m%d')
	else
		backup_file = config[:database] + '_' + end_of_iter
	end	

	mysqldump = "mysqldump -u#{config[:username]} -p#{config[:password]} #{config[:database]}"

	`#{mysqldump} > #{backup_file}.sql`
	`gzip #{backup_file}.sql`
end


