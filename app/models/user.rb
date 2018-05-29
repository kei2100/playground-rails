class User < ApplicationRecord
  has_secure_password

  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, length: {minimum: 8}
end
