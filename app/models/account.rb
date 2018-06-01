class Account
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  field :login_id, type: String
  has_secure_password
  field :password_digest, type: String

  validates :login_id, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 8}

  index({ login_id: 1 }, unique: true)
end
