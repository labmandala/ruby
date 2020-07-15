# scrape a recipe with nokogiri

# require nokogiri gem and one of its dependencies
require 'nokogiri'
require 'open-uri'

# get the HTML for the recipe page and assign it to a variable (use single quotes)
doc = Nokogiri::HTML(open('https://www.marthastewart.com/312598/brick-pressed-sandwich'))

# perform search for class, then grab the list
list = doc.css('.component-text')

# loop through the elements and puts the content
list.each do |x|
    puts x.inner_html
end

# Error: nokogiri_recipe.rb:8: warning: calling URI.open via Kernel#open is deprecated, call URI.open directly or use URI#ope