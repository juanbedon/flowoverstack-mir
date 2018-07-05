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
#  user_id          :bigint(8)
#
# Indexes
#
#  index_comments_on_commentable_type_and_commentable_id  (commentable_type,commentable_id)
#  index_comments_on_user_id                              (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Comment < ApplicationRecord

  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :text, presence: true, length: {minimum:20}

end
