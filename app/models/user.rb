class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  # make email lowercase before saving to db
  before_save { self.email = self.email.to_s.downcase }
  
  validates :username, 
            presence: true, 
            uniqueness: { case_sensitive: false },
            length: { in: 3..25 }

  # http://emailregex.com/
  # ruby simple version
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, 
            presence: true,
            length: { maximum: 105},
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  has_secure_password 
  validates :password_digest, length: { minimum: 8}
end
