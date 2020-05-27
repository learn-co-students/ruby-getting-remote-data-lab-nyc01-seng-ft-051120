require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

  #  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

   def initialize(url)
      @url = url
   end
   
   def get_response_body
      #sends a GET request to the URL passed in on initialization. 
      # This method should return the body of the response.
      uri = URI.parse(@url)
      response = Net::HTTP.get_response(uri)
      response.body
   end

   def parse_json
      JSON.parse(self.get_response_body)
   end


  
  # def get_programs
  #   uri = URI.parse(URL)
  #   response = Net::HTTP.get_response(uri)
  #   response.body
  # end

  # def program_school
  #   programs = JSON.parse(self.get_programs)
  #   programs.collect do |program|
  #     program["agency"]
  #   end
  # end


end
