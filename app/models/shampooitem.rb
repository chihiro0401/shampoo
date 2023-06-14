class Shampooitem < ApplicationRecord

  has_many :reviews, dependent: :destroy
end
