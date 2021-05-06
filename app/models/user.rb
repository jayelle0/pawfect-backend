class User < ApplicationRecord
  belongs_to :owner
  has_many :likers, foreign_key: :liker_id , class_name: "Connection", dependent: :destroy
  has_many :likeds, through: :likers, dependent: :destroy
  has_many :likeds, foreign_key: :liked_id, class_name: "Connection", dependent: :destroy
  has_many :likers, through: :likeds, dependent: :destroy
  has_many_attached :photos


end
