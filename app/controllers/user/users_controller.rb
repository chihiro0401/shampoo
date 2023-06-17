class User::UsersController < ApplicationController

  def show
   @user = current_user
  end

  #登録情報へのアクション
  def edit
    @user = current_user
  end

  #登録情報の編集を保存するアクション
  def update
    @user = current_user
    if @user.update(user_params)
        flash[:notice] = "登録情報が更新されました。"
      redirect_to users_mypage_path
    else
       redirect_to root_path
    end
  end

  def withdrawal
     @user = current_user
     @user.update(is_deleted: true)
     reset_session
     flash[:notice] = "See you again!"
     redirect_to root_path
  end

  private
      def user_params
          params.require(:user).permit(:name, :email)
      end


end
