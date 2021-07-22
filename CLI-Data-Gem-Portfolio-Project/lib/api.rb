class API

    cli.new.call
    
    require 'uri'
    require 'net/http'
    require 'openssl'
    
    url = URI("https://nutritionix-api.p.rapidapi.com/v1_1/item?upc=49000036756")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = 'SIGN-UP-FOR-KEY'
    request["x-rapidapi-host"] = 'nutritionix-api.p.rapidapi.com'
    
    response = http.request(request)
    puts response.read_body
    
end