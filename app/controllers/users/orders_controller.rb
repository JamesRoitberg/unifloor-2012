class Users::OrdersController < ApplicationController
  def index
    @users_orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @users_order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @users_order = Order.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /users/orders/1/edit
  def edit
    @users_order = Order.find(params[:id])
  end

  # POST /users/orders
  # POST /users/orders.json
  def create
    @users_order = Order.new(params[:order])

    respond_to do |format|
      if @users_order.save
        format.html { redirect_to [:users, @users_order], notice: 'Order was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /users/orders/1
  # PUT /users/orders/1.json
  def update
    @users_order = Order.find(params[:id])

    respond_to do |format|
      if @users_order.update_attributes(params[:order])
        format.html { redirect_to [:users, @users_order], notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /users/orders/1
  # DELETE /users/orders/1.json
  def destroy
    @users_order = Order.find(params[:id])
    @users_order.destroy

    respond_to do |format|
      format.html { redirect_to users_orders_url }
    end
  end
end
