module WordsHelper

require 'rubygems'
require 'nokogiri'
require 'open-uri'

def yahoo_lookup(target_word)
url = "http://dict.dreye.com/ews/dict.php?w=#{target_word}&hidden_codepage=01&ua=dc_cont&project=nd&"
doc = Nokogiri::HTML(open(url))
#doc.class
#puts doc
 # puts doc.at_css(".container :nth-child(1)").text
  #puts doc.at_css(".default").text
 
 @meanings = doc.css(".default")
     @meanings.each do |item|
        @result = item.text
        #print @result

      end
 

end

def naer_lookup(target_word)
url2 = "http://terms.naer.edu.tw/search/?q=%22#{target_word}+%22&field=ti&op=AND&match=&q=&field=ti&op=AND&order=&num=50&show=&page=&group=&heading=#result"
doc2 = Nokogiri::HTML(open(url2))
#doc.class
#puts doc
 # puts doc.at_css(".container :nth-child(1)").text
  #puts doc.at_css(".default").text
 
 @meanings2 = doc2.css(".dash .zhtwnameW")
     @meanings2.each do |item|
        @result2 = item.text
        print @result2
      end

end

end 
