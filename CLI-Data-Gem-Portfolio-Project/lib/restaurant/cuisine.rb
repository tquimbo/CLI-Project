class Restaurant::Cuisine

    attr_accessor :name, :restaurants, :id
    @@all = []
  
    def initialize(name, restaurants, id)
      @name = name
      @restaurants = []
      @id = id
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end