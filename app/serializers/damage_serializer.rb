class DamageSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :severity, :description, :enabled
end
