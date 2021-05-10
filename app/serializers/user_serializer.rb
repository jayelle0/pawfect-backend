class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate, :sex, :spade, :size, :breed
  has_many :connections
end
