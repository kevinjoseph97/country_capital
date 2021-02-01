class Cli  #this class handles all interaction with the user.... code what the user has to pick

    def welcome
        puts "Welcome to the World Atlas!"
        self.user_selection
       

    end

    def user_selection
        puts "Please type in either a country's 2-Letter code or its name you would like to know about."
        input = gets.strip.capitalize.delete(' ')
        new_location = Api.world_info(input)
        self.user_country_options(new_location)
    end

    def user_country_options(location)
        puts "Thats a cool place, heres the information we can get on it"
        puts "1. Capital City"
        puts "2. Region of the World"
        puts "3. #{location.name}'s Population "
        puts "4. Timezones"
        puts " PLEASE SELECT A NUMBER FROM ABOVE"
        input = gets.to_i
        

        binding.pry
    end



        





end
