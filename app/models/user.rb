class User < ApplicationRecord
  belongs_to :owner
  belongs_to :location
  has_many :likers, foreign_key: :liker_id , class_name: "Connection", dependent: :destroy
  has_many :likeds, through: :likers, dependent: :destroy
  has_many :likeds, foreign_key: :liked_id, class_name: "Connection", dependent: :destroy
  has_many :likers, through: :likeds, dependent: :destroy


end
