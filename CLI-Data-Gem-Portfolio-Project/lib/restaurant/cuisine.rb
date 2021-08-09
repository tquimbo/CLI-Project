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
        EdenEvents::Scraper.scrape_months if @@all.empty?
        @@all
      end
      
      def get_events
        EdenEvents::Scraper.scrape_events(self) if @events.empty?
      end
      


    def save
      @@all << self
    end

  
  end