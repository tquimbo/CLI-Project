require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class Restaurant

   def call(choice)

     
    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/90210?size=0&cuisine=#{choice}")

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

binding.pry
   
   #   check value of parsed_response here

      # response.each do |c|
      #    name =  c.text
      #    type =  c.attr("value")
      #    Restaurant::Month.new(name, ref)
      # end

   
   end

   
end

puts "Please enter cuisine"
input = gets.strip
restaurant = Restaurant.new
restaurant.call(input)

