require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))

# print out list of all Nokogiri methods & Ruby methods
# that can be called on the doc object
puts doc.methods
