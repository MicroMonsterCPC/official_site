module ApplicationHelper
  def admin?
    User.find_by(id: session[:user_id]).administrator? if session[:user_id]
  end
end
