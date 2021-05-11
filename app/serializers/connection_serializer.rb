class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :liker_id, :liked_id
  has_one :conversation
end
