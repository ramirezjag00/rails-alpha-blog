class User < ApplicationRecord
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
  has_many :articles
end
