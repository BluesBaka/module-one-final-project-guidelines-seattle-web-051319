require 'bundler'
require 'rest-client'
require 'json'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.db'
)

<<<<<<< HEAD
require_all './lib'
=======

require_all './lib'

>>>>>>> f3c14b8da79524e1cded6db2f5c8e2b9be81029d
