module Api 
    module V1 
      class Api::V1::ProductsController < ApplicationController 
        protect_from_forgery with: :null_session 
        def index 
          @products = Product.all 
          render json: @products 
        end 
 
        private 
        def products_params 
          params.require(:product).permit(:name, :price) 
        end 
      end 
    end 
end 