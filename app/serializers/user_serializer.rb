class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate, :gender, :spade, :size, :breed
  has_many :likeds
  has_many :likers 
end
