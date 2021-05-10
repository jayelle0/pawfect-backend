class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :gender
  has_many :users
end
