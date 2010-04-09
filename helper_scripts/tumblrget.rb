#!/usr/bin/ruby -w
require 'net/http'
require 'rexml/document'
url = "http://#{ARGV[0]}.tumblr.com/api/read"
xml_data = Net::HTTP.get_response(URI.parse(url)).body
if(xml_data)
  doc = REXML::Document.new(xml_data)
    a = doc.root.elements["posts/post/"].attributes["url"]
    print a + "\n"
else
    print "oops wasn't able to get anything!"
end
 
