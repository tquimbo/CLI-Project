class CLI

    def welcome
        puts "Welcome to the Discover CLI App!"
        self.zipcode #calling method on an instance
    end  

    def zipcode
        puts "Please enter your zip code."
        input = gets.strip
    end

end