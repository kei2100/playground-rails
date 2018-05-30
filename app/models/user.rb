class User < ApplicationRecord
  has_secure_password

  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, length: {minimum: 8}

  has_many :access_grants, class_name: 'Doorkeeper::AccessGrant', foreign_key: :resource_owner_id, dependent: :delete_all
  has_many :access_tokens, class_name: 'Doorkeeper::AccessToken', foreign_key: :resource_owner_id, dependent: :delete_all
end
