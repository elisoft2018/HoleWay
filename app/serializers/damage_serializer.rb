class DamageSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :severity, :enabled
end
