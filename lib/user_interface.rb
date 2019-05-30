class UserInterface
  def welcome
    puts "Welcome"
    puts "You don't know ART"
    clear
    sleep[1]
    puts "What's your name?"
    new_user
    sleep[1]
    puts "Would you like to play a couple rounds?"
  end

  def new_user
    users_input
    #if no user exists
    User.new.create(username)
  end


  def users_input
    gets.chomp
  end

  def display_question(question)
    puts question
  end


  def run
    welcome

    loop do
      # the main game
    end
  end
end
