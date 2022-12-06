class CheckoutsController < ApplicationController
    before_action :authenticate_user!
    # def create
    #     checkout_items = Product.find(params[:id])
    #     session = Stripe::Checkout::Session.create({
    #                                                  payment_method_types: ['card'],
    #                                                  line_items: [{
    #                                                    name: checkout_items[:name],
    #                                                    amount: checkout_items[:price],
    #                                                    currency: 'usd',
    #                                                    quantity: 1,
    #                                                    }],
    #                                                    mode: 'payment',
    #                                                    success_url: checkout_success_url(success: true),
    #                                                    cancel_url: root_url
    #                                                })
    #   redirect_to session.url, allow_other_host: true
    #   end
def show    
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user
        .payment_processor
        .checkout(
            mode: 'payment',
            line_items: [{
            price:    'price_1MBn9eAYpkAlgOTYqRmmGTxy',
            quantity: 1,
            adjustable_quantity: {
                enabled:true,
            },
        }],
            success_url: checkout_success_url,
        )
end
# def show    
#     current_user.set_payment_processor :stripe
#     current_user.payment_processor.customer
#     checkout_items = Product.find(params[:id])
#     session = Stripe::Checkout::Session.create({
#             mode:['payment'],
#             line_items: [{
#               name: checkout_items[:name],
#               amount: checkout_items[:price],
#               currency: 'usd',
#               quantity: 1
#               }],
#               mode: 'payment',
#               success_url: root_url(success: true),
#               cancel_url: root_url
#           })
# redirect_to session.url, allow_other_host: true
# end
# def destroy
#     @order = OrderItem.find_by(id: params[:id])
#     @order.destroy!
# end

def success
    session[:cart] = []
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(params[:session_id]) 
    # OrderItem.find_by(id: params[:id]).destroy
end

end