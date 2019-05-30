require 'json'
require 'pry'

def get_questions
  questions_hash = JSON.parse(RestClient.get('https://opentdb.com/api.php?amount=10&category=25&type=multiple'))
  results = questions_hash["results"]

  results.map do |result|
      result['incorrect_answers'][0]
      choice_b = result['incorrect_answers'][1]
      choice_c = result['incorrect_answers'][2]
      
      Question.create(
        question: result['question'],
        correct: result['correct'],
        incorrect1: result['incorrect'][0],
        incorrect2: result['incorrect'][1],
        incorrect3: result['incorrect'][2]
      )
  end
end

