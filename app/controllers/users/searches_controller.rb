class Users::SearchesController < ApplicationController

  def searches
    if current_user.nil?
      redirect_to new_user_session_path, notice: "ログインが必要です。"
    else
    @categories = Category.all.order(created_at: :desc)
    @reviews = Review.where(
      'brandname LIKE ? OR description LIKE ?',
      "%#{params[:keyword]}%",
      "%#{params[:keyword]}%"
      )

     render 'user/reviews/index'
    end
  end
end