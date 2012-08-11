class CustomersController < ApplicationController 
  respond_to :html, :json

  def index
    @customers = Customer.all
    respond_with @customers 
  end
  
  def show
    @customer = Customer.find(params[:id])
    respond_with @customer
  end
  
  def new
    @customer = Customer.new
    respond_with @customer
  end
  
  def create
    @customer = Customer.new(params[:customer])
    @customer.first_name = (params[:customer][:first_name])
    @customer.last_name = (params[:customer][:last_name])
    @customer.save
    
    respond_with @customer
    # render 'show'
  end
  
end