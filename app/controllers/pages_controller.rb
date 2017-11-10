class PagesController < ApplicationController
  before_action :check_presence
  def home
      @movies1 = Movie.where("votes_count > 2").last
      @movies2 = Movie.where("views_count > 10" ).last
      @movies3 = Movie.where("views_count > 1").last
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
  def dialog
      @users = User.all
      @conversations = Conversation.all
  end
end
