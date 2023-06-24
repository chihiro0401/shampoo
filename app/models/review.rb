class Review < ApplicationRecord

  belongs_to :user
  belongs_to :shampooitem
  belongs_to :category

  has_many :review_comments
end
