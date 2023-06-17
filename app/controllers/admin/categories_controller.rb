class Admin::CategoriesController < ApplicationController

  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path(@category), notice: "髪質を追加しました。"
    else
      @categories = Category.all
      render :index
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: "カテゴリー（髪質)を編集しました。"
    else
      render 'edit'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
