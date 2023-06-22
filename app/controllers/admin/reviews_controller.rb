class Admin::ReviewsController < ApplicationController
  # before_action :authenticate_admin!


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to request.referer
  end

  private

  def user_params
    params.require(:user).permit(:name, :is_deleted)
  end
end
