class Users::CategoriesController < ApplicationController
  # GET /users/categories
  # GET /users/categories.json
  def index
    @users_categories = Users::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_categories }
    end
  end

  # GET /users/categories/1
  # GET /users/categories/1.json
  def show
    @users_category = Users::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_category }
    end
  end

  # GET /users/categories/new
  # GET /users/categories/new.json
  def new
    @users_category = Users::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_category }
    end
  end

  # GET /users/categories/1/edit
  def edit
    @users_category = Users::Category.find(params[:id])
  end

  # POST /users/categories
  # POST /users/categories.json
  def create
    @users_category = Users::Category.new(params[:users_category])

    respond_to do |format|
      if @users_category.save
        format.html { redirect_to @users_category, notice: 'Category was successfully created.' }
        format.json { render json: @users_category, status: :created, location: @users_category }
      else
        format.html { render action: "new" }
        format.json { render json: @users_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/categories/1
  # PUT /users/categories/1.json
  def update
    @users_category = Users::Category.find(params[:id])

    respond_to do |format|
      if @users_category.update_attributes(params[:users_category])
        format.html { redirect_to @users_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/categories/1
  # DELETE /users/categories/1.json
  def destroy
    @users_category = Users::Category.find(params[:id])
    @users_category.destroy

    respond_to do |format|
      format.html { redirect_to users_categories_url }
      format.json { head :no_content }
    end
  end
end
