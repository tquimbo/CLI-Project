require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class API

   def self.call 
    url = URI("https://documenu.p.rapidapi.com/restaurants/geopolygon?size=30&cuisine=Italian&top_cuisines=true&fullmenu=true&page=2")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/x-www-form-urlencoded'
    request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
    request["x-rapidapi-key"] = '9981cae409mshe8ee64660ba2dd0p1de2a3jsn49b9c51fcdda'
    request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
    request.body = "points=%5B%5B-86.19873046875%2C38.77121637244273%5D%2C%5B-87.099609375%2C37.35269280367274%5D%2C%5B-84.79248046875%2C37.21283151445594%5D%2C%5B-82.94677734375%2C38.03078569382294%5D%2C%5B-83.47412109375%2C38.92522904714054%5D%2C%5B-84.6826171875%2C39.605688178320804%5D%2C%5B-86.19873046875%2C38.77121637244273%5D%5D"
    
    response = http.request(request)
    puts response.read_body

      binding.pry #check value of parsed_res here

   end

end
API.call