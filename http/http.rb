#!/usr/bin/ruby

=begin
Ruby Faraday is a simple, flexible HTTP client library, with support for multiple backends.
source:
https://zetcode.com/ruby/nethttp/
https://zetcode.com/web/rubyfaraday/

=end
require 'faraday'

puts "*"*40
puts "Get the library version number and the default Faraday adapter"
puts Faraday::VERSION
puts Faraday::default_adapter

puts "*"*40
puts "Grab the content of the www.something.com web page"
res = Faraday.get 'https://www.margo-group.com:'
puts res.body

puts "*"*40
puts "Strip the HTML tagd of the www.somethong.com web page"
con = Faraday::Connection.new "http://www.margo-group.com"
res = con.get
puts res.body.gsub(%r{</?[^>]+?>}, '')

puts "*"*40
puts "Get method and check for returned status."
=begin
200 standard response for successful HTTP requests
301 moved permanently
302 temporarily redirected
404 not be found
=end
puts res.status
puts res.success?


puts "*"*40
puts "Get method and check for returned status."
