Before '@movies' do

   @options = { 
       api_key: @api_key,
       base_uri: @base_uri,
       language: @language
    }

    @movies = Movies.new(@options)
end