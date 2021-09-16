require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

class Restaurants

  attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range, :cuisine
  attr_reader :name, :restaurant

  @@all = []

  def initialize(hash)
   
      hash.each do |key, value|
          self.class.attr_accessor(key)
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
      @@all << self
  end

  # def self.find_by_name(name)
  #   self.all.each {|r| r.restaurant_name == name}["data"][0]
  # end

  def self.all
    @@all
  end
 
end