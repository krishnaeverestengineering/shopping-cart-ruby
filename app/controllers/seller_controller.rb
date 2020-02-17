class SellerController < ApplicationController
    def newProduct
        @product = Product.new
    end

    def add_new_product
        @product = Product.new(product_params)
        if @product.save
            flash[:notice] = "account created successfully"
            
        else
            flash[:notice] = "something went wrong"
        end
    end

    def product_params
        params.require(:product).permit(:name, :seller_name, :price, :description)
    end
end