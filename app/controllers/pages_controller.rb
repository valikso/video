class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def status
    @movies = Movie.all
  end
end
