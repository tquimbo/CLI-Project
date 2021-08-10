require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class CLI

    def call
        welcome
        zipcode
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

    def zipcode
         CLI.get_zip_code(zip_code)
    end

    # def get_cuisines
    #     @cuisines = Restaurant::Cuisines.all
    # end

    # def list_cuisines
    #     puts 'Choose a cuisine to see restaurants.'
    #     @cuisines.each.with_index(1) do |month, index| 
    #       puts "#{index}. #{cuisine.name}"
    #     end
    # end

    # def get_user_cuisine
    #     chosen_cuisine = gets.strip.to_i
    #     show_restaurants_for(chosen_cuisine) if valid_input(chosen_cuisine , @cuisine)
    # end 

    #   def valid_input(input, data)
    #     input.to_i <= data.length && input.to_i > 0
    #   end   

    #   def show_restauraunts_for(chosen_cuisines)
    #     cuisine = @cuisine[chosen_cuisine - 1]
    #     cuisine.get_restaurants
    #     puts "Here are restaurants for #{cuisine.name}"
    #     cuisine.restaurant.each.with_index(1) do |cuisine, i|
    #       puts "#{i}. #{restaurant.name}"
    #     end
    #     get_user_restaurant(cuisine)
    #   end
    
   
#enter your prefeerred cuisine to get a list of restaurants in that cuisine
#you gottta send cuisine info to API and the API returns a list of restaurants 

    # def get_user_restaurant_info(cuisne)
    #     puts "Please enter the restaurant you want to get more information."
    #     input = gets.strip
    #     restaurant = cuisine.restaurants[input.to_i - 1]
    #     restaurant.get_restaurant_details
    #     show_restaurant_details(restaurant)
    # end

  
    # def show_restaurant_details(restaurant)
    #     puts restaurant.name
    #     restaurant.key_info.each {|i| puts "- #{i}"}
    # end 

    # def list_restaurants
    #     puts 'Choose a restaurant to get more information.'
    #     @restaurants.each.with_index(1) do |restaurant, index| 
    #       puts "#{index}. #{restaurant.name}"
    #     end
    #   end

    # def restaurants
    #     #show restaurants
    
    #     @restaurants = restaurants.all
        
    #     puts "Please pick a restaurant."
    #     input = gets.strip
    # end

#     def menu
#         input = nil
#         while input !="exit"
#     end
# end

end

cuisines = CLI.new
cuisines.get_zip_code(zip_code)
