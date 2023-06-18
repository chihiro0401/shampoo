class Admin::ShampooitemsController < ApplicationController

  def index
    @shampooitems = Shampooitem.all
    @shampooitem = Shampooitem.new
  end

  def new
    @shampooitem = Shampooitem.new
  end

  def create
    @shampooitem = Shampooitem.new(shampooitem_params)
    if @shampooitem.save
      redirect_to admin_shampooitem_path(@shampooitem), notice: "シャンプーを登録しました。"
    else
      render :new
    end
  end

  def edit
    @shampooitem = Shampooitem.find(params[:id])
  end

  def show
    @shampooitem = Shampooitem.find(params[:id])
  end

  def update
    @shampooitem = Shampooitem.find(params[:id])
    if @shampooitem.update(shampooitem_params)
      redirect_to admin_shampooitem_path(@shampooitem), notice: "シャンプーを編集しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def shampooitem_params
    params.require(:shampooitem).permit(:brandname, :description, :tax_excluded_price, :image)
  end



end
