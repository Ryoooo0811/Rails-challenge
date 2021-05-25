class UsersController < ApplicationController
  def index
    @user = current_user
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end
