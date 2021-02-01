class Api

    
    @@url = "https://restcountries.eu/rest/v2/name/japan?fullText=true"
    
    def self.capital_of_country
        response = HTTParty.get(@@url)
        country_hash = {name: response[0]["name"], capital: response[0]["capital"], region: response[0]["region"], population: response[0]["population"]}
        Country.new(country_hash)

    end


end

