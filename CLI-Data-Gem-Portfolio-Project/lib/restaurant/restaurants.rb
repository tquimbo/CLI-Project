require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'


class Restaurants

  attr_accessor :id, :restaurant_name, :restaurant_phone, :restaurant_website, :hours, :price_range
  attr_reader :name, :restaurant

  @@all = []

  def initialize(hash)
    # call attr_accessor in here
      hash.each do |key, value|
          self.class.attr_accessor(key)
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
      @@all << self
      # self.all << self
  end

  def self.all
    @@all
  end
  # way to check if we have already requested that location
  def self.find_by_zip(zip)
    self.all.find do |loc|
      loc.zip_code == zip
    end
  end
  
end