# == Schema Information
#
# Table name: comments
#
#  id               :bigint(8)        not null, primary key
#  commentable_type :string
#  text             :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  commentable_id   :bigint(8)
#
# Indexes
#
#  index_comments_on_commentable_type_and_commentable_id  (commentable_type,commentable_id)
#

class Comment < ApplicationRecord

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  belongs_to :question

end
