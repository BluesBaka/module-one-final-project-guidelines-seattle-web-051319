class User < ActiveRecord::Base
  has_many :rounds
  has_many :questions, through: :rounds
end
