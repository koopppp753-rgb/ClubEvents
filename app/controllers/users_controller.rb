class UsersController < ApplicationController
  before_action :redirect_if_logged_in, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.role = "student" if @user.role.blank?

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Account created successfully."
    else
      flash.now[:alert] = "Could not create account. Please check your details."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end

  def redirect_if_logged_in
    redirect_to root_path, notice: "You are already logged in." if logged_in?
  end
end
