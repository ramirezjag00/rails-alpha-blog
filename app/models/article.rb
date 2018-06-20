class Article < ApplicationRecord
  # indirect way of doing many-to-many association
  has_many :article_categories
  has_many :categories, through: :article_categories

  belongs_to :user

  validates :title, presence: true, length: { in: 3..50 } 
  validates :description, presence: true, length: { in: 10..300 }
  validates :user_id, presence: true
end