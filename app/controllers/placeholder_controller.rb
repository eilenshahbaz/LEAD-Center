class PlaceholderController < ApplicationController

  #before_action :get_game_from_session
  #after_action  :store_game_in_session
  
  public
  
  def landing
    if session[:logged_in]
      redirect_to root_path
    end
  end
  
  def login
    session[:logged_in] = true
    redirect_to root_path
  end
  
  def home
    if not session[:logged_in]
      redirect_to landing_path
    end
    @showQuizWarning = true
  end

end
