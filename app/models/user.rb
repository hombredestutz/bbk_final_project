class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_one :main_events
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates_presence_of :password, :password_confirmation
  validates :email, format: {with: VALID_EMAIL_REGEX }
end
