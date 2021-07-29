class Restaurant::CLI

    def call
        welcome
        zipcode
        # restaurants
        # menu
    end

    def welcome
        puts "Welcome to the Discover Nutrition CLI App!"
    end  

    def zipcode
        puts "Please enter your zip code."
        input = gets.strip
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