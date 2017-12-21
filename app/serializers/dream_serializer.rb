class DreamSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sleep_hours, :likes
end
