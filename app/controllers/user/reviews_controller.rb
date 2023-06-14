class User::ReviewsController < ApplicationController

def index
  @reviews = Review.all
end

def new
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  if @review.save
    redirect_to reviews_path(@review), notice:"レビューが投稿されました"
  else
    render :new
  end
end

def edit
  @review =Review.find(params[:id])
  @categories =Category.all
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
  params.require(:review).permit(:category_id, :brandname,:description, :tax_excluded_price, :is_status, :image)
end

end