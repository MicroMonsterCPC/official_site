class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin?
    @user.administrator? if ( @user = User.find_by(id: session[:user_id]) )
  end

  def debug(value)
    puts "=" * 40
    p value
    puts "*" * 40
  end

end
