require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://dict.dreye.com/ews/dict.php?w=approach&hidden_codepage=01&ua=dc_cont&project=nd&"
doc = Nokogiri::HTML(open(url))
#puts doc
 # puts doc.at_css(".container :nth-child(1)").text
 # puts doc.at_css(".default").text
  @meanings = doc.css(".default")
 # explaination = [ "a", "b" , "c" ]
  @meanings.to_a.each do |item|
  	explaination = item.text
  	puts "#{explaination}"
  end 

  puts @meanings
  puts  @meanings.to_a.class

