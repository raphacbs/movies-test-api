class Companies

    include HTTParty

    def initialize(options)
        @options =  options
    end
    
    def getById(id)
        url = "#{@options[:base_uri]}/company/#{id}?api_key=#{@options[:api_key]}&language=#{@options[:language]}"    
        self.class.get(url)
    end


end
