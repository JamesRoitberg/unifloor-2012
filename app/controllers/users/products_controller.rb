class Users::ProductsController < ApplicationController
  # GET /users/products
  # GET /users/products.json
  def index
    @users_products = Product.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /users/products/1
  # GET /users/products/1.json
  def show
    @users_product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /users/products/new
  # GET /users/products/new.json
  def new
    @users_product = Product.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /users/products/1/edit
  def edit
    @users_product = Product.find(params[:id])
  end

  # POST /users/products
  # POST /users/products.json
  def create
    @users_product = Product.new(params[:product])

    respond_to do |format|
      if @users_product.save
        format.html { redirect_to [:users, @users_product], notice: 'Product was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /users/products/1
  # PUT /users/products/1.json
  def update
    @users_product = Product.find(params[:id])

    respond_to do |format|
      if @users_product.update_attributes(params[:product])
        format.html { redirect_to [:users, @users_product], notice: 'Product was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /users/products/1
  # DELETE /users/products/1.json
  def destroy
    @users_product = Product.find(params[:id])
    @users_product.destroy

    respond_to do |format|
      format.html { redirect_to users_products_url }
    end
  end
end
