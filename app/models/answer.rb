# == Schema Information
#
# Table name: answers
#
#  id          :bigint(8)        not null, primary key
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint(8)
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#

class Answer < ApplicationRecord

  belongs_to :question
  has_many :comments, as: :commentable

end
