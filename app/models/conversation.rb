class Conversation < ApplicationRecord
  belongs_to :connection
  has_many :messages
end
