require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'
class API

   # @@url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=20&cuisine=#{cuisine}")


   # @@http = Net::HTTP.new(url.host, url.port)
   # http.use_ssl = true
   # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
   
   # @@request = Net::HTTP::Get.new(url)
   # request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
   # request["x-rapidapi-key"] = 'bebaad4ee8mshe771f428751ab9ap18427ajsnb8ac89e572f8'
   # request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
   
   # @@response = http.request(request)
   # puts response.read_body
   # JSON.parse(response.read_body)


   # def zip_call(zip_code)
      
      
   #    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/#{zip_code}?size=20&")


   #    http = Net::HTTP.new(url.host, url.port)
   #    http.use_ssl = true
   #    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      
   #    request = Net::HTTP::Get.new(url)
   #    request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
   #    request["x-rapidapi-key"] = 'bebaad4ee8mshe771f428751ab9ap18427ajsnb8ac89e572f8'
   #    request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
      
   #    response = http.request(request)
   #    puts response.read_body
   #    data = JSON.parse(response.read_body)

     

   #    # zip_hash = {name: [response.read_body]
   #    # cuisine.new(zip_hash)


   #    # zip_hash = {cuisine: zip_data["cuisines"]}
   #    # Cuisine.new(zip_hash)


   #    binding.pry 


   #    # puts "Please enter zipcode"
   #    # zip_code = gets.strip
   #    # restaurant = API.new
   #    # restaurant.call(zip_code) 
   # end
   


   def call(zip_code, cuisine)
      
      
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
      restaurant_data = JSON.parse(response.read_body)

    
      # @data each

      # @data["data"][0]["restaurant_name"] 

  

      restaurant_hash = {restaurant_name: restaurant_data["data"][0]["restaurant_name"], restaurant_phone: restaurant_data["data"][0]["restaurant_phone"], restaurant_website: restaurant_data["data"][0]["restaurant_website"], hours: restaurant_data["data"][0]["hours"], price_range: restaurant_data["data"][0]["price_range"]}
      Restaurants.new(restaurant_hash)
      
      
      binding.pry
      #Restaurant.new(restaurant_hash)
      # Restaurants.new(restaurant_hash)
      



      # binding.pry

      # puts "Please enter zipcode"
      # zip_code = gets.strip
      # restaurant = API.new
      # restaurant.call(zip_code) 
   end
   

   
end

# 1. American
# 2. Italian
# 3. Chinese 
# 4. Mexican
# 5. 


puts "Please enter zipcode and cuisine to get relevant restaurants."
zip_code = gets.strip
cuisine = gets.strip



cuisines = API.new
# cuisines.zip_call(zip_code)
cuisines.call(zip_code, cuisine)
