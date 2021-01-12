class CategoryLarge < ApplicationRecord
  has_many :category_mediums, dependent: :destroy


end
