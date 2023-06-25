class Review < ApplicationRecord

  belongs_to :user
  belongs_to :shampooitem
  belongs_to :category

  has_many :review_comments
  has_many :favorites, counter_cache: true

  validates :brandname,presence:true
  validates :description,presence:true,length:{maximum:200}
end
