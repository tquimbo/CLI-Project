require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class CLI

    def call
       welcome
       get_restaurants
      #  while @input != "reset"
        # get_cuisines
        # list_cuisines
        # get_user_cuisine
        
        # restaurants
        # menu
    end

    def welcome
        puts "Welcome to the Discover Restaurants CLI App!"
    end  

# enter your zipcode to get a list of cuisines in that zipcode
# you gottta send zipcode info to API and the API returns a list of cuisines

    def get_restaurants

      # new_restaurants = false

      # # new_location = false

      # while !new_restaurants
      puts "Please enter zipcode and cuisine to get relevant restaurants."
      zip_code = gets.strip
      cuisine = gets.strip

      API.call(zip_code, cuisine)

      # new_restaurants = Restaurants.find_by_zip_cuisine(zip_code, cuisine) || API.call(zip_code, cuisine)

      # new_restaurants = API.call(zip_code, cuisine)


      # if !new_restaurants
      #   puts "That zip code or cuisine was invalid."
      # end
    end 


    #   cuisines = API.new
    # # cuisines.zip_call(zip_code)
    #  cuisines.call(zip_code, cuisine)


  #     if !new_location
  #       puts "That zip code was invalid."
  #     end
  # end
  # self.restaurant_options(new_location)



# def restaurant_options(location)
#   puts "Please choose from the following list for restaurant information for #{restaurant.name}"
#   puts "1. Restaurant Name"
#   puts "2. Restaurant Phone"
#   puts "3. Restaurant Website"
#   puts "4. Hours"
#   puts "5. Price Range"
#   self.user_selection(location)
# end

# def user_selection(location)
#   input = gets.strip
#   if input == "1" #|| input.include?("wind") || input.include?("Wind") || input.include?("speed") || input.include?("Speed")
#     puts "The restaurant name in #{location.name} is #{location.wind_speed}"
#   elsif input == "2"
#     puts "The restaurant phone #{location.name} is #{location.temp}"
#   elsif input == "3"
#     puts "The restaurant website #{location.name} it feels like #{location.feels_like}"
#   elsif input == "4"
#     puts "The restaurant hours are #{location.name} is #{location.cloud_cover}"
#   elsif input == "5"
#     puts "The restaurant price range is"
#   else
#     puts "That selection was invalid."
#     self.weather_options(location)
#   end
#   self.main_menu
# end
      
#     end

#     def get_cuisines
#         @cuisines = Restaurant::Cuisines.all
#     end

#     def list_cuisines
#         puts 'Choose a cuisine to see restaurants.'
#         @cuisines.each.with_index(1) do |month, index| 
#           puts "#{index}. #{cuisine.name}"
#         end
#     end

#     def get_user_cuisine
#         chosen_cuisine = gets.strip.to_i
#         show_restaurants_for(chosen_cuisine) if valid_input(chosen_cuisine , @cuisine)
#     end 

#       def valid_input(input, data)
#         input.to_i <= data.length && input.to_i > 0
#       end   

#       def show_restauraunts_for(chosen_cuisines)
#         cuisine = @cuisine[chosen_cuisine - 1]
#         cuisine.get_restaurants
#         puts "Here are restaurants for #{cuisine.name}"
#         cuisine.restaurant.each.with_index(1) do |cuisine, i|
#           puts "#{i}. #{restaurant.name}"
#         end
#         get_user_restaurant(cuisine)
#       end

#       def 
    
   
# #enter your prefeerred cuisine to get a list of restaurants in that cuisine
# #you gottta send cuisine info to API and the API returns a list of restaurants 

#     # def get_user_restaurant_info(cuisne)
#     #     puts "Please enter the restaurant you want to get more information."
#     #     input = gets.strip
#     #     restaurant = cuisine.restaurants[input.to_i - 1]
#     #     restaurant.get_restaurant_details
#     #     show_restaurant_details(restaurant)
#     # end

  
#     # def show_restaurant_details(restaurant)
#     #     puts restaurant.name
#     #     restaurant.key_info.each {|i| puts "- #{i}"}
#     # end 

#     # def list_restaurants
#     #     puts 'Choose a restaurant to get more information.'
#     #     @restaurants.each.with_index(1) do |restaurant, index| 
#     #       puts "#{index}. #{restaurant.name}"
#     #     end
#     #   end

#     # def restaurants
#     #     #show restaurants
    
#     #     @restaurants = restaurants.all
        
#     #     puts "Please pick a restaurant."
#     #     input = gets.strip
#     # end

# #     def menu
# #         input = nil
# #         while input !="exit"
# #     end
# # end

end

# puts "Please enter zipcode and cuisine to get relevant restaurants."
# zip_code = gets.strip
# cuisine = gets.strip

# CL = CLI.new
# CL.call
