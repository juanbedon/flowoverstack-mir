class Question < ApplicationRecord
	
	acts_as_votable
	has_many :comments, as: :commentable
	belongs_to :user

end