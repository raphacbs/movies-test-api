class Movies  

    include HTTParty

    def initialize(options)
        @options =  options
    end
    
    def getById(id)
        url = "#{@options[:base_uri]}/movie/#{id}?api_key=#{@options[:api_key]}&language=#{@options[:language]}"    
        self.class.get(url)
    end

    def rating(id, nota)
        url = "#{@options[:base_uri]}/movie/#{id}/rating?api_key=#{@options[:api_key]}&language=#{@options[:language]}"
        rate = {
            value: nota
        }
        body = {:body => JSON.generate(rate)}

        puts "a nota foi #{body}"

        self.class.post(url, body)
    end

end