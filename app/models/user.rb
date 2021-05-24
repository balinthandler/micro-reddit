class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
