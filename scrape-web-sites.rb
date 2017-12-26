require 'ap'
require 'json'
require 'nokogiri'
require 'HTTParty'
require 'Pry'

file = File.read('./list-of-websites.json')
db = JSON.parse(file)

db.each do |name,url|
	page = Nokogiri::HTML(HTTParty.get(url))
	print page.to_html(indent:3)
end
