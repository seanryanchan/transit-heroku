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
