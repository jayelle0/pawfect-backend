class User < ApplicationRecord
  belongs_to :owner
  has_many :liking_others, foreign_key: :liker_id , class_name: "Connection", dependent: :destroy
  has_many :likeds, through: :liking_others, dependent: :destroy
  has_many :got_likeds, foreign_key: :liked_id, class_name: "Connection", dependent: :destroy
  has_many :likers, through: :got_likeds, dependent: :destroy
  has_many_attached :photos


end
