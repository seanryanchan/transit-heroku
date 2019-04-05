# License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/28/2019 - Sean Chan - Initial File
  # 1.1 - 3/7/2019 - Menard Ysrael Cruz - Added license, Added Comment Block that gives detailed information on the software.
  
  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.


class SessionsController < ApplicationController


  def new
  end

   # Destroys session and logs out

  def destroy
    if logged_in?
      log_out
      flash.now[:success] = "Successfully logged out."
    end
    render 'static_pages/home'
  end

  # Create session, logs in

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
