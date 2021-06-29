class Post < ApplicationRecord
  # relationships
  belongs_to :blog
  belongs_to :user
  has_many :messages

  # validations
  validates :title, :content, presence: true
  validates :title, length: {minimum: 3}
end
