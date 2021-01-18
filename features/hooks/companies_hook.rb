Before '@companies' do

    @options = { 
        api_key: @api_key,
        base_uri: @base_uri,
        language: @language
     }
 
     @companies = Companies.new(@options)
 end