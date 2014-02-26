class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  def after_sign_in_path_for(resource)
    Event.create(:user_id=>current_user.id, :action_type=>"sign_in", :data => {:description=>'Sign in'})
    if resource.is_a? User
      categories_path
    else
      super
    end

  end


  def after_sign_out_path_for(resource)
    Event.create(:user_id=>current_user.id, :action_type=>"sign_out", :data => {:description=>'Sign out'})
    if resource.is_a? User
      categories_path
    else
      super
    end

  end
end
