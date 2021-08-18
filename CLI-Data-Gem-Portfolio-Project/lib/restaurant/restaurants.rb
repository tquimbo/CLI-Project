class Restaurants

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

    # def initialize(hash)
    #   # call attr_accessor in here
    #     hash.each do |key, value|
    #         self.class.attr_accessor(key)
    #         self.send("#{key}=", value) if self.respond_to?("#{key}=")
    #     end
    #     @@all << self
    #     # self.all << self
    # end

    # def initialize(hash)
    #   # binding.pry
    #   hash.each do |k, v|
    #     self.send("#{k}=", v) #if self.respond_to?("#{k}=")
    #   end
    #   @@all << self
    # end

    def get_restaurant_details
      NearbyRestaurants::API.scrape_key_info(self) if @key_info.empty?
    end 
  
    def save
      @@all << self
    end
  
    def self.find_by_name(name)
      self.all.each {|p| p.last_name == name}
      # binding.pry
    end
  
    # def self.all
    #   @@all
    # end
    
  end