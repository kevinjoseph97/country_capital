class Cli  #this class handles all interaction with the user.... code what the user has to pick

    def welcome
        puts "Welcome to the World Atlas!"
        self.user_selection
    
    end

    def user_selection
        puts "Please type in either a country's 2-Letter code or its name you would like to know about."
        input = gets.strip.capitalize.delete(' ')
        new_country = Api.world_info(input)
        self.user_country_options(new_country)
    end

    def user_country_options(new_country)
        puts "#{new_country.name}: "
        puts "1. Capital City"
        puts "2. Region of the World"
        puts "3. Population in #{new_country.name} "
        puts "4. Timezones"
        puts " PLEASE SELECT A NUMBER FROM ABOVE"
        #maybe we can use /n to put the above statement
        self.second_level_choice(new_country)

       
    end

    def second_level_choice(new_country)
        input = gets.strip
        if input == "1"
            puts "The cpaital of #{new_country.name} is #{new_country.capital}"
            
        elsif input == "2"
            puts "#{new_country.name} is located in #{new_country.region}." 
            
        elsif input == "3"
            puts "There are about #{new_country.population} living there!"

        elsif input == "4"
            puts "The timezones in #{new_country.name} is/are #{new_country.timezones}"

        else
            input != "1-4" 
            puts "Please choose options 1-4"
            self.user_country_options(new_country)
        end

        self.more_info(new_country)

    end

    def more_info(new_country)
        puts "Please select your next option"
        puts "1. Something else about #{new_country.name}"
        puts "2. Another country"
        puts "3. Exit App"
        self.more_info_other_country(new_country)
        
    end

    def more_info_other_country(new_country)
        input = gets.strip
        if input == "1"
            user_country_options(new_country)
        elsif  
            input == "2"
            user_selection
        else
            input == "3"
            exit_application

        end
        binding.pry

    end


    def exit_application
        puts "Thanks!"
        exit
        
    end

end
