json.extract! post, :id, :name, :email, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
