class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path #チャット画面にリダイレクト
    else
      render :edit #editのビューの表示
    end
  end

  private

  def user_params #ストロングパラメータで制限
    params.require(:user).permit(:name, :email)
    #userの情報を取得したい  #nameとemailのキーと値だけ取得したい
  end
end
