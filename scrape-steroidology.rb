require 'ap'
require 'json'
require 'nokogiri'
require 'HTTParty'
require 'Pry'

db = JSON.parse(File.read('./list-of-websites.json'))
url = db["steroidology"]

page = Nokogiri::HTML(HTTParty.get(url))
posts = page.css('.blockbody').css('ol').css('li')

#Still have to traverse between pages
page_links = Array.new
posts.each do |post|
	content = post.css('inner')
	content.each do |link|
		author = content.css('.author')
		ap author.length 
		#page_links << link['href']
	end

end

#Split Array into Members Pages and Information Mages(Social Network Analysis?)
