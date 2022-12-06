class OrderItemsController < ApplicationController
 
        def create
            product = Product.find(params[:product_id])
            order  = OrderItem.create!(name: product.name, description: product.description, total: product.price, user: current_user)
          
            session = Stripe::Checkout::Session.create(
              payment_method_types: ['card'],
              line_items: [{
                name: product.name,
                images: [product.image],
                amount: product.price,
                currency: 'usd',
                quantity: 1
              }],
              success_url: order_url(order_item),
              cancel_url: order_url(order_item)
            )
          
            order_item.update(checkout_session_id: session.id)
            redirect_to new_order_payment_path(order_items)
        end
  
end
