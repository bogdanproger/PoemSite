class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome back, #{current_user.name}"
      redirect_to root_path
    else
      flash.now[:warning] = "Incorrect email and/or password!"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    flash[:success]="See you later"
    redirect_to root_path
  end

end