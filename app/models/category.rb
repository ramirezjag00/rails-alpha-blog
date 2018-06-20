class Category < ApplicationRecord
  # indirect way of doing many-to-many association
  has_many :article_categories
  has_many :articles, through: :article_categories

  validates :name,
            presence: true,
            uniqueness: true,
            length: { in: 3..25 }
end