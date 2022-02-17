class UsersController < ApplicationController
  def create
    @user_account = User.new(user_params)

    if @user_account.save
      render json: { message: "Success!" }, status: :ok
    else
      render json: { message: "Failure :(" }, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
