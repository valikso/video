class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

  def index
    @movies = Movie.all
    @movies = @movies.where("title = ?", params[:title_search].capitalize) if params[:title_search]
      if @movies.empty?
        @movies = Movie.all
      end
  end

end
