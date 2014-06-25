class Guest < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  belongs_to :main_event
  has_many :assignment
  has_many :sub_events, through: :assignment

  validates_presence_of :main_event_id, :email, :first, :last 
  validates :email, format: {with: VALID_EMAIL_REGEX }

end
