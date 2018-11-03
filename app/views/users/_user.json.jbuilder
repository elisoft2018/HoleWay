json.extract! user, :id, :username, :email, :password_digest, :name, :surname, :address, :token, :enabled, :created_at, :updated_at
json.url user_url(user, format: :json)
