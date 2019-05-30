require 'rest-client'
require 'json'

 url = 'https://opentdb.com/api.php?amount=15&category=25&type=multiple'
 response = RestClient.get(url)
 JSON.parse(response)

