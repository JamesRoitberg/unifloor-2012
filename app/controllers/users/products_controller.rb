class Users::ProductsController < ApplicationController
  # GET /users/products
  # GET /users/products.json
  def index
    @users_products = Users::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_products }
    end
  end

  # GET /users/products/1
  # GET /users/products/1.json
  def show
    @users_product = Users::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_product }
    end
  end

  # GET /users/products/new
  # GET /users/products/new.json
  def new
    @users_product = Users::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_product }
    end
  end

  # GET /users/products/1/edit
  def edit
    @users_product = Users::Product.find(params[:id])
  end

  # POST /users/products
  # POST /users/products.json
  def create
    @users_product = Users::Product.new(params[:users_product])

    respond_to do |format|
      if @users_product.save
        format.html { redirect_to @users_product, notice: 'Product was successfully created.' }
        format.json { render json: @users_product, status: :created, location: @users_product }
      else
        format.html { render action: "new" }
        format.json { render json: @users_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/products/1
  # PUT /users/products/1.json
  def update
    @users_product = Users::Product.find(params[:id])

    respond_to do |format|
      if @users_product.update_attributes(params[:users_product])
        format.html { redirect_to @users_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/products/1
  # DELETE /users/products/1.json
  def destroy
    @users_product = Users::Product.find(params[:id])
    @users_product.destroy

    respond_to do |format|
      format.html { redirect_to users_products_url }
      format.json { head :no_content }
    end
  end
end
