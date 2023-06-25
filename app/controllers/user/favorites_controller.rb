class User::FavoritesController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.build(review_id: @review.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.find_by(review_id: @review.id)
    favorite.destroy
    redirect_to request.referer
  end

end
