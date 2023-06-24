class Review < ApplicationRecord

  belongs_to :user
  belongs_to :shampooitem

  has_many :comments
end
