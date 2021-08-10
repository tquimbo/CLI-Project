class NearbyRestaurants::Restaurants
    attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range
    attr_reader :name, :restaurant
    @@all = []
  
    def initialize(name, restaurant_name, restaurant_phone, restaurant_website, hours, price_range, id)
      @name = name
      @restaurant_name = restaurant_name
      @restaurant_phone = restaurant_phone
      @restaurant_website = restaurant_website
      @hours = hours
      @price_range = price_range
      @id = id
      save
    end

    def get_restaurant_details
      NearbyRestaurants::API.scrape_key_info(self) if @key_info.empty?
    end 
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end

 
  end