class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def addToCart
        id = params[:id]
        user = current_user
        item = Cart.new
        item.user_id = user.id
        item.user_email = user.email
        item.product_id = id

        if item.save
            flash[:notice] = "item added into cart"
        end
        @items = Cart.where(user_email: current_user.email)
    end
end
