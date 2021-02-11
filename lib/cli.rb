class Cli  #this class handles all interaction with the user.... code what the user has to pick

    def welcome
        puts "Welcome to the World Atlas!".bold.yellow
        self.user_selection #calling the user selection method to begin the process 
    end

    def user_selection
        puts "Please type in either a country's 2-Letter code OR its name you would like to know about.\n ".cyan
        puts "If you want to check out the list of countries and their 2 letter code here's a link:".white.on_blue
        puts "https://laendercode.net/en/2-letter-list.html".white.on_blue
        puts "Example: United States of America = US ".white.on_blue
        input = gets.strip
        new_country = Api.world_info(input) 
       
        # if there error in retrieving proper information, user instructed to try inputing selection again. 
        if new_country == false
            puts "Sorry that was not a valid input, please try again.".bold.red.underline
            self.user_selection
        end
        # if no error, user is prompted to continue
        self.user_country_options(new_country)
    end

    #given the user's selection and value for new_country, the first level of options are given
    def user_country_options(new_country)
        puts "You picked #{new_country.name}. WHat would you like to know about it?\n.
        1. Capital City\n
        2. Region of the World\n
        3. Population in #{new_country.name}\n
        4. Timezones\n
        PLEASE SELECT A NUMBER FROM ABOVE\n".cyan
        self.second_level_choice(new_country)
    end

    def second_level_choice(new_country)
        input = gets.strip
        if input == "1"
            puts "The cpaital of #{new_country.name} is #{new_country.capital}".magenta
            
        elsif input == "2"
            puts "#{new_country.name} is located in #{new_country.region}.".yellow
            
        elsif input == "3"
            puts "There are about #{new_country.population} living there!".blue

        elsif input == "4"
            puts "The timezones in #{new_country.name} is/are #{new_country.timezones}".black.on_white

        else
            input != "1-4" 
            puts "Please choose options 1-4".red.underline
            self.user_country_options(new_country)
        end

        self.more_info(new_country)

    end

    def more_info(new_country)
        puts "Please select your next option".cyan
        puts "1. Something else about #{new_country.name}".cyan
        puts "2. Another country".cyan
        puts "To exit app- type: exit".cyan
        self.more_info_other_country(new_country)
        
    end

    def more_info_other_country(new_country)
        input = gets.strip
        if input == "1"
            user_country_options(new_country)
        elsif  
            input == "2"
            user_selection
        elsif input == "exit"
            self.exit_application

        else
            input != "1-2" or "exit"
            puts "Sorry please choose again.".bold.red.underline
            self.more_info(new_country)
        end
    end


    def exit_application
        puts "See ya later, Alligator!!".bold.green
    end

end
