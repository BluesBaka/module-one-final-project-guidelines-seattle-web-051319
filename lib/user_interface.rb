

class UserInterface
  def welcome
    puts "Welcome"
    puts "You don't know ART"
    sleep(2)
    system("clear")
    puts "You're in an art trivia game! Answer questions from the prompt."
    puts "If you'd like to quit, press q."
  end

  def new_user(user_input)
    username = user_input.downcase.capitalize
    User.find_or_create_by(username: username)
    # username = users_input.downcase.capitalize
    #if no user exists
  end


  def users_input
    user_input = STDIN.gets.chomp
    puts "thank you"
    new_user(user_input)
  end


   # binding.pry

  def display_question(question)
    puts
    puts
    # binding.pry
    puts question.question
    puts question.correct
    puts question.incorrect1
    puts question.incorrect2
    puts question.incorrect3

    puts

  end

  def game_play

    puts "Would you like to play a couple rounds? Y/N"
    users_input
    if users_input == "N"
    end
    else
      question = Question.find_by(id: 2)
      display_question(question)
    end
  # end

  def run
    welcome


    puts "What's your name?"
    users_input

    # loop do
    #   # the main game
    # end
  end
  # binding.pry
end

# game_play
