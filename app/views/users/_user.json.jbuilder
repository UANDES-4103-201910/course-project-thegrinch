json.extract! user, :id, :nickname, :email, :password, :role, :name, :last_name, :bio, :location, :geofence, :profession, :created_at, :updated_at
json.url user_url(user, format: :json)
