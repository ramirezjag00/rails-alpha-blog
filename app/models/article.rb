class Article < ApplicationRecord
  validates :title, presence: true, length: { in: 3..50 } 
  validates :description, presence: true, length: { in: 10..300 }
  belongs_to :user
end