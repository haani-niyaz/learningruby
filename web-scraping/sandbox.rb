# require 'open-uri'
# require 'open_uri_redirections'

# url = 'https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants'
# page = open(url,:allow_redirections => :safe)
# text = page.read

# # puts text.scan(/This item ships/)

# puts /ruby/.match(text)[0]


require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0')


Pry.start(binding)