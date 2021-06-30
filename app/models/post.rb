class Post < ApplicationRecord
  # relationships
  belongs_to :blog
  belongs_to :user
  has_many :messages
  has_many :comments, as: :commentable

  # validations
  validates :title, :content, presence: true
  validates :title, length: {minimum: 3}
end
