class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
end

def new
@user = User.new
end

def create
@user = User.new(user_params)
if @user.save
  login @user
  redirect_to user_path(@user)
else
  render new_user_path
end

end

def edit
end

def update
end

def destroy
end

  private 
  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  

end
