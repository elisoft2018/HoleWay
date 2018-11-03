json.extract! user, :id, :username, :email, :password, :name, :surmane, :address, :token, :enabled, :created_at, :updated_at
json.url user_url(user, format: :json)
