class PagesController < ApplicationController
  before_action :check_presence
  def home
  end

  def contact
  end

  def about
  end

  def status
    @movies = Movie.all
  end

  def check_orders
     @orders = Order.all
  end
end
