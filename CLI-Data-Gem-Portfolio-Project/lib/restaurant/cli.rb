class Restaurant::CLI

    def call
        welcome
        zipcode
        # restaurants
        # menu
    end

    def welcome
        puts "Welcome to the Discover Restaurants CLI App!"
    end  


#enter your zipcode to get a list of cuisines in that zipecode
#you gottta send zipcode info to API and the API returns a list of cuisines

    def zipcode
        puts "Please enter your zip code."
        input = gets.strip
    end

    def get_cuisines
        @cuisines = Restaurant::Cuisines.all
    end

    def list_cuisines
        puts 'Choose a cuisine to see restaurants.'
        @cuisines.each.with_index(1) do |month, index| 
          puts "#{index}. #{cuisine.name}"
        end
    end

    def get_user_cuisine
        chosen_cuisine = gets.strip.to_i
        show_restaurants_for(chosen_cuisine) if valid_input(chosen_cuisine , @cuisine)
      end 

      def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
      end   
    
   
#enter your prefeerred cuisine to get a list of restaurants in that cuisine
#you gottta send cuisine info to API and the API returns a list of restaurants 

    def cuisine
        puts "Please enter the cuisine you want."
        input = gets.strip
    end

    def get_restaurants
        @restaurants = Restaurant::Restaurants.all
    end

    def list_restaurants
        puts 'Choose a restaurant to get more information.'
        @restaurants.each.with_index(1) do |restaurant, index| 
          puts "#{index}. #{restaurant.name}"
        end
      end

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