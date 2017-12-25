require 'ap'
require 'json'
require 'nokogiri'

file = File.read('./list-of-websites.json')
db = JSON.parse(file)

db.each do |name,url|
	page = Nokogiri::HTML(open(url))   
end
