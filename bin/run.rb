require_relative '../config/environment'
# require_relative "../lib/API.rb"
# require_relative "../lib/user_interface.rb"

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

system('clear')

UserInterface.new.run
