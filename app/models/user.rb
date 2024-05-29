class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, presence: true, length: { minimum: 8, maximum: 16 }
    validates :email, presence: true, uniqueness: true
end
