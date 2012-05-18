class Users::CustomersController < ApplicationController
  
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save!
       respond_with [:users, @customer]
     else
       respond_with @customer
     end
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy!
  end
  
  def new
    @customer = Customer.new
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:customer])
  end
end
