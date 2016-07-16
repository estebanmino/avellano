class Address < ActiveRecord::Base

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :street,  presence: true
  validates :number,  presence: true
  validates :commune,  presence: true
  validates :phone_number,  presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_many :orders
  has_one :user

end
