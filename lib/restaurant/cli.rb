require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class CLI

    def call
       welcome
       get_restaurants
    end

    def welcome
        puts "Welcome to the Discover Restaurants CLI App!"
    end  

    def get_restaurants
    
      puts "Please enter zip code and cuisine to get relevant restaurants."

      zip_code = gets.strip
      cuisine = gets.strip

      @new_restaurants = API.call(zip_code, cuisine)

      if @new_restaurants.empty?
        puts "That zip code or cuisine was invalid. Please try again."
       get_restaurants
      else
      self.print_restaurant_name(@new_restaurants)
      end

    end


    def print_restaurant_name(new_restaurants)
    @new_restaurants.each.with_index(1) do |r, i|
      r.each do |key, value|
        if key == "restaurant_name" 
          puts "#{i}." 
          puts value
        end
      end 
    end
    self.get_restaurants_details(@new_restaurants)
  end

  def get_restaurants_details(new_restaurants)
    puts "Please enter the number of the restaurant you want to learn more about."
    input = gets.strip

    @new_restaurants.each.with_index(1) do |r, i|
      r.each do |key, value|
        if input.to_i > @new_restaurants.count
          puts "That number was invalid. Please try again"
          self.print_restaurant_name(new_restaurants)
        else
          if input == "#{i}"
         puts "#{key}: #{value}"
        end
      end     
    end  
  end
    self.reset
  end


def reset
    puts "To learn more about another restaurant, please enter 1"
    puts "To exit the program please enter 2"
    input = gets.strip
  if input == "1"
      self.get_restaurants
  elsif input == "2"
      self.exit_program
  else
    puts "Invalid selection"
    self.reset
  end
end

def exit_program
  abort("Thanks for using the Discover Restaurants CLI App!")
end

end