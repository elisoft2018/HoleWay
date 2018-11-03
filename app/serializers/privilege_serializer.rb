class PrivilegeSerializer < ActiveModel::Serializer
  attributes :id, :privilege, :enabled
  has_one :user
end
