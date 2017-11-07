class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

 def check_presence
   if params[:title_search]
     redirect_to(:controller => :movies, :action => :index, :title_search => params[:title_search])
   end
 end
end
