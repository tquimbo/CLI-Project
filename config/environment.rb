#access to all the files we need to run our application
require 'pry' #just require for external libs and its an absolute path
require 'httparty' 

require('./lib/restaurant/cli.rb')
require('./lib/restaurant/api.rb')  #for files inside our directory #. goes up a spot (config) #.. goes up to top of cli
require('./lib/restaurant/restaurants.rb')
require('./lib/restaurant/version.rb')


