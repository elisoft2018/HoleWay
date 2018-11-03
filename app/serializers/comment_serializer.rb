class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :value
  has_one :user
  has_one :report
end
