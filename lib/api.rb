class Api

    
    # @@url = "https://restcountries.eu/rest/v2/name/{name}?fullText=true"
    
    def self.world_info(name)
        @@url = "https://restcountries.eu/rest/v2/name/#{name}?fullText=true"
        response = HTTParty.get(@@url)
        country_attributes = {name: response[0]["name"], capital: response[0]["capital"], region: response[0]["region"], population: response[0]["population"], timezones: response[0]["timezones"]}
        Country.new(country_attributes)


    end


end

#the return value of def self.japan_info is going to be the new instance of Japan.new
# Api.user_country_choice