class Blog < ApplicationRecord
    # relationships
    has_many :posts
    has_many :owners
    has_many :users, through: :owners

    # validations
    validates :name, :description, presence: true
end
