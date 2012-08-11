class OrdersController < ApplicationController 
  respond_to :html, :json

  def index
    @orders = Order.all
    respond_with @orders
  end 

  def show
    @order = Order.find(params[:id])
    respond_with @order
  end
  
  def new
    @order = Order.new
    respond_with @order
  end
  
  def create
    @order = Order.new(params[:order])
    @order.price = params[:order][:price]
    @order.customer_id = params[:order][:customer_id]
    @order.save
    
    respond_with @order
    # render 'show'
  end
  
end