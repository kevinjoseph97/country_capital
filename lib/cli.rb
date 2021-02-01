class Cli  #this class handles all interaction with the user

    def welcome
        puts "Welcome to the World Atlas"
        which_country
    end

    def which_country
        puts "Please type in a country you would like to know about."
       # input = gets.strip
        Api.capital_of_country



    end




end
