class Users::SearchesController < ApplicationController

  def searches
    @categories = Category.all.order(created_at: :desc)
    @reviews = Review.where(
      'brandname LIKE ? OR description LIKE ?',
      "%#{params[:keyword]}%",
      "%#{params[:keyword]}%"
      )

     render 'user/reviews/index'
  end
end