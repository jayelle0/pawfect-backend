class Owner < ApplicationRecord
    has_many :users, dependent: :destroy
    has_one_attached :featured_image
    has_secure_password

end
