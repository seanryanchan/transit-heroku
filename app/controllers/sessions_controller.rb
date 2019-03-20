class SessionsController < ApplicationController


  def new
  end

  def destroy
    if logged_in?
      log_out
      flash.now[:success] = "Successfully logged out."
    end
    render 'static_pages/home'
  end

  def create
    commuter = Commuter.find_by(email: params[:session][:email])
    if commuter && commuter.authenticate(params[:session][:password])
      log_in(commuter)
      redirect_to commuter
    else
      # error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

end
