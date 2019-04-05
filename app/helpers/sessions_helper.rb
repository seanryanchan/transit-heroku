# License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/28/2019 - Sean Chan - Initial File
  # 1.1 - 3/7/2019 - Menard Ysrael Cruz - Added license
  
  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.


module SessionsHelper

  # Most of these functions are supposed to be used in controllers and views.
  # Should only use these functions when manipulating the current logged in user.

  # session variable is now populated with the corresponding entry.
  def log_in(commuter)
    session[:commuter_id] = commuter.id
  end

  # Returns the current user, if he/she is logged-in.
  def current_user
    if @commuter.nil?
      @commuter = Commuter.find_by(id: session[:commuter_id])
    else
      @commuter
    end
  end

  # Returns whether user is logged in or not. Exclamation mark is the NOT operator.
  def logged_in?
    !current_user.nil? && !(session[:commuter_id].nil?)
  end

  # Logs out user by deleting his entry in the session variable.
  def log_out
    session.delete(:commuter_id)
    @current_user.nil?
  end
end
