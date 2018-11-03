class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :name, :surmane, :address, :token, :enabled
end
