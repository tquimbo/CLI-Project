class API

    cli.new.welcome

    require 'uri'
    require 'net/http'
    require 'openssl'
    
    url = URI("https://documenu.p.rapidapi.com/restaurants/zip_code/90210?size=30&cuisine=Italian&top_cuisines=true&page=2")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-api-key"] = 'baf246c932f361ca5a5fda1f4c6cfbdc'
    request["x-rapidapi-key"] = 'SIGN-UP-FOR-KEY'
    request["x-rapidapi-host"] = 'documenu.p.rapidapi.com'
    
    response = http.request(request)
    puts response.read_body
    
end