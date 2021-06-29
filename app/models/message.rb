class Message < ApplicationRecord
  # relationships
  belongs_to :post
  belongs_to :user

  # validations
  validates :author, :message, presence: true
end
