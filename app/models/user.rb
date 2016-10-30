class User < ApplicationRecord
  has_secure_password
  validates :mail, presence: true
  validates :mail, uniqueness: true
  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail, format: { with: VALID_EMAIL_REGEX } 
end
