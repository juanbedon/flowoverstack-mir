# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  text       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_questions_on_user_id  (user_id)
#

class Question < ApplicationRecord
	
	acts_as_votable
	has_many :comments, as: :commentable
	belongs_to :user

end
