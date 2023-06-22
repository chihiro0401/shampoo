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
    @reviews = Review.find(params[:id])
    @reviews.destroy
    redirect_to request.referer
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :is_deleted)