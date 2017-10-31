class LineItemsController < ApplicationController
    def index
        @line_items = LineItem.where(order_id: User.find(current_user.id).orders.last.id)
    end
    
    def show
    end

    def new
        @line_item = LineItem.new
    end

    def create
        @current_order = Order.find_by(is_active: true)
        @line_item = LineItem.new(lineItem_params)
        if @line_item.save
            redirect_to products_path
        else
            render :new
        end
    end

    def destroy
    end

    def add_item
        @current_cart_item = LineItem.find_by(order_id: active_order.id, product_id: params[:product_id])
        if @current_cart_item.nil?
            @line_item = LineItem.new(order_id: active_order.id, product_id: params[:product_id], quantity: params[:quantity])
                if @line_item.save
                    redirect_to products_path #fix redirection for later 
                else
                    redirect_to products_path #to do send back msg like Add Cart Unsuccessful
                end
        else
            if @current_cart_item.update_attributes(quantity: params[:quantity])
            redirect_to products_path
            else
                flash[:notice] = 'Update failed'
            end
        end
    end

    def remove_item
        LineItem.find(params[:line_items_id]).destroy
        redirect_to line_items_path
    end

    def purchase
        current_user.orders.update(is_active: false)
        current_user.orders << Order.new(is_active: true)
        redirect_to root_path #direct somewhere else
    end

    private
        def lineItem_params
            params.require(:line_item).permit(:quantity, :product_id, :order_id)
        end

end
