module Api
  module V1
    class CartsController < ApplicationController
      # GET    /api/v1/carts/:cart_id
      def show
        cart = Cart.find(params[:cart_id])

        render json: { status: 'SUCCESS', message: 'Loaded cart content',
                       cart_content: cart}, status: :ok
      end

      # GET /carts or /carts.json
      def index
          @carts = Cart.all
      end
    end
  end
end
