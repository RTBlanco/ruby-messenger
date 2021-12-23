class Conversation < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :participant, class_name: 'User'

  has_many :messages
end
