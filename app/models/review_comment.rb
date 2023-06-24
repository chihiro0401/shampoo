class ReviewComment < ApplicationRecord
  belongs_to :review
　belongs_to :user
  belongs_to :shampooitem
　has_many :review_comments, class_name: 'ReviewComment'
  validates :comment,presence:true
end
