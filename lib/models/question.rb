class Question < ActiveRecord::Base
  has_many :rounds
  belongs_to :user
end
