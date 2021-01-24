class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(username:params[:username],email:params[:email],password:params[:password])
  #   if @user.save
  #     redirect_to new_user_path
  #   else
  #     render :new
  #    end
  # end

  def create
    @user = User.new(whitelisted_post_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(whitelisted_post_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end

  private

  def whitelisted_post_params
    params.require(:user).permit(:username, :email, :password)
  end
end
