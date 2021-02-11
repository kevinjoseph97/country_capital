class Api 
    
 
    
    def self.world_info(name)
        @@url = "https://restcountries.eu/rest/v2/name/#{name}?fullText=true"
        response = HTTParty.get(@@url)
       
       
        # checked to see what the response would have been if invalid choice was entered.
        # if invalid input, returned false to alllow the user to try again.
        if response.code == 404
            return false 
        end
        
        #figure out how to reach into teh array and hashes to get the info I want 
        country_attributes = {name: response[0]["name"], capital: response[0]["capital"], region: response[0]["region"], population: response[0]["population"], timezones: response[0]["timezones"]}
        Country.new(country_attributes) #send over all the above info to Country class so it can be initialized

    end
    
end


