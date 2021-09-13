require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'


class Restaurants

  attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range, :cuisine
  attr_reader :name, :restaurant

  @@all = []


  # def initialize(hash)
  #   # call attr_accessor in here
  #     hash.each do |key, value|
  #         self.class.attr_accessor(key)
  #         self.send("#{key}=", value) if self.respond_to?("#{key}=")
  #     end
  #     @@all << self
  #     # self.all << self
  # end

  # def initialize(restaurant_name, restaurant_phone, restaurant_website, hours, price_range, cuisine)
  #   @restaurant_name = restaurant_name
  #   @restaurant_phone = restaurant_phone
  #   @restaurant_website = restaurant_website
  #   @hours = hours
  #   @price_range = price_range
  #   @cuisine = cuisine


  #   binding.pry

  # end

  def initialize(hash)
    # call attr_accessor in here
      hash.each do |key, value|
          self.class.attr_accessor(key)
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
      @@all << self
      # self.all << self
  end


  def self.find_by_name(name)
    self.all.each {|r| r.restaurant_name == name}["data"][0]
    # binding.pry
  end

  def self.all
    @@all
  end
  # way to check if we have already requested that location
  # def self.find_by_name(name)
  #   self.all.each {|r| r.last_name == name}
  #   # binding.pry
  # end



end