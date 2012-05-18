class Users::OrdersController < ApplicationController
  # GET /users/orders
  # GET /users/orders.json
  def index
    @users_orders = Users::Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_orders }
    end
  end

  # GET /users/orders/1
  # GET /users/orders/1.json
  def show
    @users_order = Users::Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_order }
    end
  end

  # GET /users/orders/new
  # GET /users/orders/new.json
  def new
    @users_order = Users::Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_order }
    end
  end

  # GET /users/orders/1/edit
  def edit
    @users_order = Users::Order.find(params[:id])
  end

  # POST /users/orders
  # POST /users/orders.json
  def create
    @users_order = Users::Order.new(params[:users_order])

    respond_to do |format|
      if @users_order.save
        format.html { redirect_to @users_order, notice: 'Order was successfully created.' }
        format.json { render json: @users_order, status: :created, location: @users_order }
      else
        format.html { render action: "new" }
        format.json { render json: @users_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/orders/1
  # PUT /users/orders/1.json
  def update
    @users_order = Users::Order.find(params[:id])

    respond_to do |format|
      if @users_order.update_attributes(params[:users_order])
        format.html { redirect_to @users_order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/orders/1
  # DELETE /users/orders/1.json
  def destroy
    @users_order = Users::Order.find(params[:id])
    @users_order.destroy

    respond_to do |format|
      format.html { redirect_to users_orders_url }
      format.json { head :no_content }
    end
  end
end
