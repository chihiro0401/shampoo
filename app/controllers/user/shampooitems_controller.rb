class User::ShampooitemsController < ApplicationController

  def index
    @shampooitems = Shampooitem.all
  end

  def show
    @shampooitem = Shampooitem.find(params[:id])
  end

  private

  def shampooitems_params
    params.require(:shampooitem).permit(:name, :introduction, :price, :is_status, :image_id, :image)
  end
end
