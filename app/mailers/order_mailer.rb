class OrderMailer < ApplicationMailer
	def new_order_email
    @order = params[:order]
    @current_cart = params[:current_cart]
    mail(to: @order.email, subject: "Your order is confirmed!")
  end
end
