class Country


    attr_accessor :name, :capital, :region, :population, :timezones

    def initialize(hash)
         #we are gonna set up all the attributes in here  
        hash.each do |key, value|
            self.send("#{key}=", value)
        end
        
        


    end

end
