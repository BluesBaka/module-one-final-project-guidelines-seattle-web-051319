require 'rest-client'
require 'json'

 url = 'https://opentdb.com/api.php?amount=15&category=25&type=multiple'
 response = RestClient.get(url)
 json = JSON.parse(response)

# json = {
#   users: [
#     {username: ''},
#     {username: ''},
#     {username: ''},
#   ]
# }

json.question.each do |user|
  # user = {username: ''}
  Question.create(question)
end

# complicated hashketball:

json["results"].each do |obj|
  # category = obj["categroy"] #=> "Art"
  # type = obj["type"] #=> "something"
  # difficulty  = obj["diff"] #=> 3
  # Category.create(name: obj["category"])

  correct = obj["correct_answer"]
  inc1 = obj["incorrect_answers"][0]
  inc2 = obj["incorrect_answers"][1]
  inc3 = obj["incorrect_answers"][2]


  Question.create(
    correct: correct,
    incorrect1: inc1,
    ...
  )
  binding.pry
end
