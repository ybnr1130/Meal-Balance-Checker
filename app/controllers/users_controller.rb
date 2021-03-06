class UsersController < ApplicationController

  def setting
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
  end

  def create
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:account_name, :height, :weight, :basal_metabolism, :target, :term, :status)
  end


end
