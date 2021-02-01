class Cli  #this class handles all interaction with the user.... code what the user has to pick

    def welcome
        puts "Welcome to the Japan Atlas!"
        self.user_selection
       

    end

    def user_selection
        puts "Please type in a number you would like to know about."
       # input = gets.strip.capitalize
       Api.user_country_choice
       
        
    end

    # def user_country
    #     puts "Awesome!! What would you like to know about  from the below menu"
        

       
    # end



        





end
