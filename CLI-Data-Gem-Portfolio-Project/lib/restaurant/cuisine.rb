class Restaurant::Cuisine

    attr_accessor :name, :restaurants, :id
    @@all = []
  
    def initialize(name, restaurants, id)
      @name = name
      @restaurants = []
      @id = id
      save
    end

    def self.all
        Restaurants::API.get_cuisines if @@all.empty?
        @@all
      end
      
      def get_events
        EdenEvents::Scraper.scrape_events(self) if @events.empty?
      end
      
    def save
      @@all << self
    end

  
  end