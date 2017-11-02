class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @products = Product.all
        @product = Product.find(params[:id])
        @order = Order.new
    end

    private
    def product_params
        params.require(:product).permit(:prodName, :prodDesc, :unitPrice, :detail)
    end

end
