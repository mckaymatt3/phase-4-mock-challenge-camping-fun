class ActivitySerializer < ActiveModel::Serializer
  # attributes :id
  attributes :id, :name, :difficulty
  # has_many :signups


end
