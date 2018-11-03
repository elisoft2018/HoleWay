class ReportSerializer < ActiveModel::Serializer
  attributes :id, :photography, :location, :comment, :enabled
  has_one :damage
end
