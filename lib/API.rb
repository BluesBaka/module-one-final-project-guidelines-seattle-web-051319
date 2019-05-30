require 'rest-client'
require 'json'
require 'pry'


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

def api_fetcher
  url = 'https://opentdb.com/api.php?amount=15&category=25&type=multiple'
  response = RestClient.get(url)
  json = JSON.parse(response)
end

def create_question 
  api_fetcher['results'].each do |result|
    quest = result['question']
    a = result['incorrect_answers'][0]
    b = result['incorrect_answers'][1]
    c = result['incorrect_answers'][2]
    d = result['correct_answer']
    Question.create(
      question: quest,
      correct: a,
      incorrect1: b,
      incorrect2: c,
      incorrect3: d
    )
    end
end

create_question

binding.pry 
0

