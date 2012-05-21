class Users::ProductsController < ApplicationController
  before_filter {|c| c.can_handle?(:product)}
  def index
    @users_products = Product.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @users_product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @users_product = Product.new
    @categories = Category.all
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /users/products/1/edit
  def edit
    @users_product = Product.find(params[:id])
    @categories = Category.all
  end

  # POST /users/products
  # POST /users/products.json
  def create
    @users_product = Product.new(params[:product])
    respond_to do |format|
      if @users_product.save
        format.html { redirect_to users_products_path , notice: 'Produto foi criado com sucesso.' }
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
        format.html { redirect_to users_products_path, notice: 'Produto foi alterado com sucesso.' }
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
