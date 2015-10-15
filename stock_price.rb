# require 'httparty'

# AG1 = ARGV[0]
# AG2 = ARGV[1]


# case AG1
# when "GET"
#   response = HTTParty.get(AG2)
# end




# p response.headers
# puts response.body


require 'HTTParty'
require 'nokogiri'

response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')
# body = response.body

dom = Nokogiri::HTML(response.body)


my_span = dom.xpath("//span[@id='yfs_l84_aapl']").first.content



puts "The current stock price is $#{my_span}"