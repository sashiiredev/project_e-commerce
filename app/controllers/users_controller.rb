class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.find(params[:user_id])
    end

  end
  def update
    redirect_to root_path
  end

end
