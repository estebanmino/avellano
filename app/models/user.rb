class User < ActiveRecord::Base

  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  belongs_to :address


end
