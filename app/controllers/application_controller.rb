class ApplicationController < ActionController::Base
  before_action :index
  protect_from_forgery with: :exception
  include SessionsHelper


  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

  def index
     if params[:title_search].blank?
       @movies = Movie.all
     else
    @movies = Movie.where("lower(title) LIKE ? ","#{params[:title_search].downcase}%")
        if @movies.empty?
          flash.now[:success] = 'Фільма не знайдено'
        end
    end
  end

end
