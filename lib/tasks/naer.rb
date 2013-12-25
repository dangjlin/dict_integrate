require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://terms.naer.edu.tw/search/?q=%22advantage&h%22&field=ti&op=AND&match=&q=&field=ti&op=AND&order=&num=50&show=&page=&group=&heading=#result"
doc = Nokogiri::HTML(open(url))
#puts doc
 # puts doc.at_css(".container :nth-child(1)").text
  #puts doc.at_css(".default").text

  meanings2 = doc.css(".dash .zhtwnameW")
  doc.css(".dash .zhtwnameW").each do |item|
  	meaning = item.text
  	puts "#{meaning}"
  end 

  puts meanings2

