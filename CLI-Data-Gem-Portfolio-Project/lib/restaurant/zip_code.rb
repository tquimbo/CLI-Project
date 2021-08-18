# class Restaurant::Zip_Code

#     attr_accessor :name, :cuisines, :restaurants, :id
#     @@all = []
  
#     def initialize(name, cuisnines, restaurants, id)
#       @name = name
#       @cuisines = []
#       @restaurants = []
#       @id = id
#       save
#     end
  
#     def save
#       @@all << self
#     end
  
#     def self.all
#         Restaurant::API.get_zipcodes if @@all.empty?
#       @@all
#     end
  
#   end