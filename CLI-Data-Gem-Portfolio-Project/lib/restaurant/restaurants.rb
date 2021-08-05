class Restaurant::Restaurants
    attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range
    attr_reader :name, :restaurant
    @@all = []
  
    def initialize(name, restaurant, restaurant_phone, restaurant_website, hours, price_range, id)
      @name = name
      @restaurant = restaurant
      @restaurant_phone = restaurant_phone
      @restaurant_website = restaurant_website
      @hours = hours
      @price_range = price_range
      @id = id
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end

    def 
  
  end