json.extract! comment, :id, :commentable_id, :commentable_type, :text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
