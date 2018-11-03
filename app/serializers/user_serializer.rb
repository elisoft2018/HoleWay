class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :name, :surname, :address, :token, :enabled
end
