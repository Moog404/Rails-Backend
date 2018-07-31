class UsersController < ApplicationController


def new_user
  @user = User.new
  @user.username = params[:username]
  if @user.valid?
    @user.bio = params[:bio]
    @user.save
    redirect_to "/user/#{@user.username}"
  else
    redirect_to "/error" 
  end

  end

  def show
    @user = User.find_by(username: params[:username])
  end

  def error

  end

end
