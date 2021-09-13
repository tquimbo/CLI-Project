require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class API

   def self.call(zip_code, cuisine)
      
      
      url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=20&cuisine=#{cuisine}")

   #    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=30&top_cuisines=true")


      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      
      request = Net::HTTP::Get.new(url)
      request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
      request["x-rapidapi-key"] = 'bebaad4ee8mshe771f428751ab9ap18427ajsnb8ac89e572f8'
      request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
      
      response = http.request(request)
      puts response.read_body
      restaurant_data = JSON.parse(response.read_body)


      restaurant_data.each do |r|
         Restaurants.new(restaurant_name: restaurant_data["data"][0]["restaurant_name"], restaurant_phone: restaurant_data["data"][0]["restaurant_phone"], restaurant_website: restaurant_data["data"][0]["restaurant_website"], hours: restaurant_data["data"][0]["hours"], price_range: restaurant_data["data"][0]["price_range"])
      end


      
      
   end

   # def self.call(zip_code)

  
   #    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=30&top_cuisines=true")

   #    http = Net::HTTP.new(url.host, url.port)
   #    http.use_ssl = true
   #    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

   #    request = Net::HTTP::Get.new(url)
   #    request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
   #    request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
   #    request["x-rapidapi-key"] = '37f8257850mshac34b31522fb74fp179f31jsnc0fa61499ecd'

   #    response = http.request(request)
   #    puts response.read_body
            
   #    restaurant_data = JSON.parse(response.read_body)

   #    binding.pry

      # restaurant_data.each do |r|
      #    Restaurants.new(restaurant_name: restaurant_data["data"][0]["restaurant_name"], restaurant_phone: restaurant_data["data"][0]["restaurant_phone"], restaurant_website: restaurant_data["data"][0]["restaurant_website"], hours: restaurant_data["data"][0]["hours"], price_range: restaurant_data["data"][0]["price_range"])
      # end
      
   
 
   


   
end
