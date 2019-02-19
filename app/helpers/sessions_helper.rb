module SessionsHelper
  def log_in(commuter)
    session[:commuter_id] = commuter.id

  end
end
