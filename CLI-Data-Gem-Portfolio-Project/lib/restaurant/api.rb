class API

    cli.new.call
    
    require 'uri'
    require 'net/http'
    require 'openssl'
    
    url = URI("https://edamam-food-and-grocery-database.p.rapidapi.com/parser?ingr=apple")
    
    get GetData
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = '9981cae409mshe8ee64660ba2dd0p1de2a3jsn49b9c51fcdda'
    request["x-rapidapi-host"] = 'edamam-food-and-grocery-database.p.rapidapi.com'
    
    response = http.request(request)
    puts response.read_body
    end
    
end