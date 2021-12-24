class Conversation < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :participant, class_name: 'User'

  has_many :messages
  has_many :convo_messages, through: :messages

  def create_message(message)
    messages.create(message, user: self.user)
  end
end
