

class UserInterface
  attr_accessor :current_user
  def initialize(current_user=nil)
    @current_user = current_user
  end

  def run
    welcome
    # binding.pry

    # loop do
    #   # the main game
    # end
  end


  def welcome
    puts "Welcome"
    puts "You don't know ART"
    sleep(2)
    system("clear")
    puts "You're in an art trivia game! "
    puts "Answer questions from the prompt."
    puts "If you'd like to quit, press q."
    puts
    puts "What's your name?"
    users_input
  end

  def new_user(user_input)
    # binding.pry
    username = user_input.downcase.capitalize
    user = User.find_or_create_by(username: username)
    @current_user = user
    # username = users_input.downcase.capitalize
    #if no user exists
    game_play
  end


  def users_input
    user_input = STDIN.gets.chomp
    puts "thank you"
    new_user(user_input)
  end


   # binding.pry
   #displays questions with the correct and incorrect answers
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
    puts
  end

  def game_play
    is_running = true
    while is_running
    puts "Would you like to play a couple rounds? Y/N"
    response = STDIN.gets.chomp.downcase
    if response == "n"
      puts "fine, begone with you"
      is_running = false
    elsif response =="y"
      # binding.pry
      question = Question.all[0..14].sample
      binding.pry
      Round.create(user: @current_user, question: question)
      display_question(question)
      end
    end
  end


  # binding.pry
end

# game_play
