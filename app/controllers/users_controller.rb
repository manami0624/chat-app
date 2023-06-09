class UsersController < ApplicationController

def edit
end

def update
  if current_user.update(user_params)
    redirect_to root_path     #更新に成功するとチャット画面に遷移する
  else
    render :edit              #更新に失敗するとeditページに戻ってくる

  end
end

private

def user_params
  params.require(:user).permit(:name, :email)
end
end
