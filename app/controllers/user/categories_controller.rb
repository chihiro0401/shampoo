class User::CategoriesController < ApplicationController

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @reviews = @category.reviews
    render 'user/reviews/index'
  end
end
