class Country


    attr_accessor :name, :capital, :region, :population, :timezones
    @@all = []

    def initialize(country_attributes)
        country_attributes.each do |key, value| #its going through all the attributes I called upon in API class
            self.send("#{key}=", value) #settings the attributes wanted to the response of the api
        end
        
        @@all << self
    end

    def self.all
        @@all
    end

end
