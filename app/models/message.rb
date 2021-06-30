class Message < ApplicationRecord
  # relationships
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable

  # validations
  validates :author, :message, presence: true
end
