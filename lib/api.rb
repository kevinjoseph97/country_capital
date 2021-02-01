class Api

    
    @@url = "https://restcountries.eu/rest/v2/name/japan?fullText=true"
    
    def self.user_country_choice
        response = HTTParty.get(@@url)
        # country_attributes = {name: response[0]["name"], capital: response[0]["capital"], region: response[0]["region"], population: response[0]["population"], timezones: response[0]["timezones"]}
        binding.pry


    end


end

# Api.user_country_choice
