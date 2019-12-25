class ApplicationController < ActionController::Base
  before_action :set_current_user
    
  def set_current_user
     current_user
  end
  
  def authenticate_user
    if current_user.nil?
      flash[:notice] = 'ログインが必要です'
      redirect_to('/users/sign_in')
    end
  end
  
  def forbid_login_user
    if current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/posts")
    end
  end
  
  def after_sign_in_path_for(resource)
    posts_path
  end
    
end
