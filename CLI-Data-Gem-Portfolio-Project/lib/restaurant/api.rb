require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class API

   def call

     
   #  url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=20")

    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=20&cuisine=#{cuisine}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
    request["x-rapidapi-key"] = 'bebaad4ee8mshe771f428751ab9ap18427ajsnb8ac89e572f8'
    request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
    
    response = http.request(request)
    puts response.read_body
    JSON.parse(response.read_body)

# binding.pry
   end

   def scrape.zip_code

   end
   
   def scrape.cuisine

   end

   def scrape.restaurant

   end


   
end

# puts "Please enter zipcode"
# zip_code = gets.strip

# puts "Please enter cuisine"
# cuisine = gets.strip

# restaurant = Restaurant.new
# restaurant.call(zip_code)

# puts "Please enter cuisine"
# cuisine = gets.strip
# restaurant = Restaurant.new
# restaurant.call(zip_code,cuisine)