class Comment < ApplicationRecord

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  belongs_to :question

end