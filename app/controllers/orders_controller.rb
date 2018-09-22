class OrdersController < ApplicationController
    def index
        @orders=Order.all
        render json: @orders, status: :ok
    end
    def create
      to_insert = params.permit(:date, :number_order, :weight_colection, :confirmation, :state, :value_credits)
      user = User.find(1)
      colector = Colector.find(1)
      temp= to_insert
      temp =  temp.merge({:user => user, :colector => colector})
      puts temp
      @order = Order.create(temp)
      render json: @order, status: :ok
    end
end
