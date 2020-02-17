class UsersController < ApplicationController

  def index
  end

  def login
    @user = User.new
  end

  def user_athentication
    prm = params.require(:user)
    user = User.where(email: prm[:email], password: prm[:password]).first
    if user
      session[:user_email] = user.email
      redirect_to products_url
    else
      logger.info "login failed"
      flash.now[:notice] = "login failed"
      redirect_to login_path
    end
  end

  def register
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if !User.exists?(email: @user.email)
      if @user.save
        flash[:notice] = "account created successfully"
        redirect_to seller_login_url
      else
        flash[:notice] = "something went wrong"
        render :register
      end
    else
      flash[:notice] = "account already exists"
      render :login
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :ph)
  end
  
end
