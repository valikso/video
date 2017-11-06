class OrdersController < ApplicationController

def create
  @order = Order.create(user_id: current_user.id, name_of_film:
   order_params[:name_of_film], description: order_params[:description], year: order_params[:year])
  if @order.save
    redirect_to "/"
      flash[:success] = 'Успех, замовлення принято'
  end
end

def index
  @orders = Order.all
end

private

  def order_params
    params.require(:order).permit(
     :name_of_film,
     :user_id,
     :year,
     :age,
     :description)
  end
end
