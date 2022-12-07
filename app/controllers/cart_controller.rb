class CartController < ApplicationController
  def show
    @render_cart = false
  end
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy!
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_order_item = @cart.order_items.find_by(product_id: @product.id)
    if current_order_item && quantity > 0
      current_order_item.update(quantity:)
      redirect_to request.referrer
    elsif quantity <= 0
      current_order_item.destroy
      redirect_to request.referrer
    else
      @cart.order_items.create(product: @product, quantity:)
  end

  end




  def remove
    OrderItem.find_by(id: params[:id]).destroy
    redirect_to request.referrer
    flash[:alert] = 'Your item was removed!'
  end
end
