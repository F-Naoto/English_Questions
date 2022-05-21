class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      login user
      redirect_to user
    else
    render new_session_path
    end
  end

  def destroy
  logout
  redirect_to root_url
  end
end
