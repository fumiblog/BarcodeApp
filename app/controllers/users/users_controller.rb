class Users::UsersController < ApplicationController
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to barcodes_show_path
  end
    
    
  private
  def user_params
    params.require(:user).permit(:email, :name)
  end
end
