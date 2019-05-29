class User < ActiveRecord::Base
  has_many :rounds, through: :questions

end
