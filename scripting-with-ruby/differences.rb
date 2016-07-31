def check_usage   
  unless ARGV.length == 2 
    puts "Usage: differences.rb old-inventory new-inventory"
    exit
  end
end

def boring?(line,boring_words)
 boring_words.any? do |word|
  contains?(line,word) 
 end
end


def contains?(haystack,needle)
  haystack.split('/').include?(needle) 
end  

def inventory_from(filename)
  inventory = File.open(filename)
  downcased = inventory.collect do | line | 
    line.downcase
  end

# removing  '\n' with chomp
  downcased.reject do | line |
    boring?(line.chomp,['temp','recycler'])
  end
end

def compare_inventory_files(old_file, new_file) 
  old_inventory = inventory_from(old_file)
  new_inventory = inventory_from(new_file)

  puts "The following files have been added:"
  puts new_inventory - old_inventory

  puts ""
  puts "The following files have been deleted:"
  puts old_inventory - new_inventory
end


if $0 == __FILE__ 
  check_usage 
  compare_inventory_files(ARGV[0], ARGV[1]) 
end
