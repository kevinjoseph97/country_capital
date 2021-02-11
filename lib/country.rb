class Country


    attr_accessor :name, :capital, :region, :population, :timezones


    def initialize(country_attributes)
        country_attributes.each do |key, value| #going through all the attributes I called upon in API class
            self.send("#{key}=", value) #settings the attributes wanted to the response of the api.... this is being dynamic
        end
        
       
    end

end
