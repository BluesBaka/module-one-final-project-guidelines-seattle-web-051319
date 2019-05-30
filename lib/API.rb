
def get_questions_answers_from_api
  questions_hash = JSON.parse(RestClient.get("https://opentdb.com/api.php?amount=30&type=multiple"))
  results = questions_hash["results"]

  results.collect do |result|
      result['incorrect_answers'][0]
      choice_b = result['incorrect_answers'][1]
      choice_c = result['incorrect_answers'][2]
      Question.create(
        question: result['question'],
        correct_answer: result['correct_answer'],
        incorrect_answer_1: result['incorrect_answers'][0],
        incorrect_answer_2: result['incorrect_answers'][1],
        incorrect_answer_3: result['incorrect_answers'][2]
      )
  end
end
