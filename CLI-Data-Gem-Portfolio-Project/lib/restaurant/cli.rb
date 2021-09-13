require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class CLI

    def call
       welcome
       get_restaurants
       
    

       #print_restaurants

      # while @input != "reset"
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
    
      @new_restaurants = false

      while !@new_restaurants
      puts "Please enter zipcode and cuisine to get relevant restaurants."
      zip_code = gets.strip
      cuisine = gets.strip


      @new_restaurants = API.call(zip_code, cuisine)


      if !@new_restaurants
        puts "That zip code or cuisine was invalid."
      end
    end

    # Restaurants.each.with_index(1) do |r, i|
    #   puts "#{i}. #{r.restaurant_name}."
    # end





    


  
      # binding.pry

      # @new_restaurants.each_with_index do |r, i|
      # puts "#{i}. #{r.name}"



    
    end

    def self.print_restaurants(zip_code, cuisine)

    end

    # def print_restaurant_name


    # end


      # self.print_restaurants(zip_code, cuisine)

      #@new_restaurant = API.call(zip_code, cuisine) 

      #new_restaurants = Restaurants.find_by_zip_cuisine(zip_code, cuisine) || API.call(zip_code, cuisine)



      # if !new_restaurants
      #   puts "That zip code or cuisine was invalid."
      # end
      #self.print_restaurants(@new_restaurant)
      # self.new_restaurant_hash(new_restaurant)
    
    # def new_restaurant_hash(new_restaurant)

    #   restaurant_hash = {restaurant_name: restaurant_data["data"][0]["restaurant_name"], restaurant_phone: restaurant_data["data"][0]["restaurant_phone"], restaurant_website: restaurant_data["data"][0]["restaurant_website"], hours: restaurant_data["data"][0]["hours"], price_range: restaurant_data["data"][0]["price_range"]}
    #   Restaurants.new(restaurant_hash)

    # end


    #   cuisines = API.new
    # # cuisines.zip_call(zip_code)
    #  cuisines.call(zip_code, cuisine)


  #     if !new_location
  #       puts "That zip code was invalid."
  #     end
  # end
  # self.restaurant_options(new_location)

  # def self.print_restaurants(zip_code, cuisine)
  #   new_restaurants.each_with_index do |r, i|
  #     puts "#{i}. #{r.restaurant_name}"
  #   end
  # end


# def restaurant_options(restaurant)
#   puts "Please choose from the following list for restaurant information for #{restaurant.name}."
#   puts "1. Restaurant Phone"
#   puts "2. Restaurant Website"
#   puts "3. Hours"
#   puts "4. Price Range"
#   self.user_selection(restaurant)
# end

# def user_selection(restaurant)
#   input = gets.strip
#   if input == "1" #|| input.include?("wind") || input.include?("Wind") || input.include?("speed") || input.include?("Speed")
#     puts "The restaurant phone in #{restaurant.name} is #{restaurant.restaurant_phone}"
#   elsif input == "2"
#     puts "The restaurant website #{restaurant.name} is #{restaurant.restaurant_website}"
#   elsif input == "3"
#     puts "The restaurant hours #{restaurant.name} is #{restaurant.hours}"
#   elsif input == "4"
#     puts "The restaurant price range are #{restaurant.name} is #{restaurant.price_range}"
#   else
#     puts "That selection was invalid."
#     self.restaurant_options(restaurant)
#   end
#   self.main_menu
# end

# def main_menu
#   puts "To see another restaurant, please enter 1"
#   puts "To exit the program please enter 2"
#   input = gets.strip
#   if input == "1"
#       self.get_restaurants
#   elsif input == "2"
#       self.exit_program
#   else
#     puts "Invalid selection"
#     self.main_menu
#   end
# end

# def exit_program
#   abort("Thanks for using the Discover Restaurants CLI  app!")
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