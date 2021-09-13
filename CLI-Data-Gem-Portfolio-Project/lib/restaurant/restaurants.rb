require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'


class Restaurants

  attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range
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

  def initialize(key, value)
    # binding.pry
    hash.each do |k, v|
      self.send("#{k}=", v) #if self.respond_to?("#{k}=")
    end
    @@all << self
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

  binding.pry




end