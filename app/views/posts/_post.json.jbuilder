json.extract! post, :id, :user_id, :title, :description, :location, :dumped, :grinchrate, :created_at, :updated_at
json.url post_url(post, format: :json)
