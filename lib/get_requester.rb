require 'net/http'
require 'open-uri'
require 'json'
class GetRequester

@@URL = ""

    def initialize(url)
        @url = url
        @@URL = url
    end

    def get_response_body
        uri = URI.parse(@@URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
       data = JSON.parse(self.get_response_body) 
    #    data.collect do |element|
    #     data[""]
    end 
end 

get_requester.parse_json