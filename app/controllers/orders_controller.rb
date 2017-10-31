class OrdersController < ApplicationController
    def index
        @orders = User.find(current_user.id).orders
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new
    end

    private
    def order_params
        params.require(:order).permit(:orderNnum)
    end
    
end