class Account
  include Mongoid::Document
  include Mongoid::Timestamps
  field :login_id, type: String

  validates :login_id, presence: true, uniqueness: true

  index({ login_id: 1 }, unique: true)
end
