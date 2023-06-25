class User::ReviewsController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update, :destroy]

def index
  @reviews = Review.all
  @categories = Category.all
end

def new
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  @review.user = current_user
  if @review.save
    redirect_to reviews_path(@review), notice:"レビューが投稿されました"
  else
    render :new
  end
end

def edit
  @review =Review.find(params[:id])
end

def destroy
  @reveiew = Review.find(params[:id])
  @reveiew.destroy
  flash[:notice] = "レビューを削除しました。"
  redirect_to reviews_path
end

def update
  @review = Review.find(params[:id])
  if @review.update(review_params)
    redirect_to review_path(@review), notice:"レビューを編集しました"
  else
    render :edit
  end
end

def show
  @review = Review.find(params[:id])
end

private

def review_params
  params.require(:review).permit(:brandname, :description, :shampooitem_id, :category_id)
end

  def  is_matching_login_user
     @review = Review.find(params[:id])
    unless @review.user_id == current_user.id
      redirect_to reviews_path
    end
  end
end