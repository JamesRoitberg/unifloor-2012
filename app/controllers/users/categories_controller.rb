class Users::CategoriesController < ApplicationController
  before_filter {|c| c.can_handle?(:category)}
  
  def index
    @users_categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @users_category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @users_category = Category.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @users_category = Category.find(params[:id])
  end

  def create
    @users_category = Category.new(params[:category])

    respond_to do |format|
      if @users_category.save
        format.html { redirect_to [:users, @users_category], notice: 'Categoria foi criada com sucesso.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @users_category = Category.find(params[:id])

    respond_to do |format|
      if @users_category.update_attributes(params[:category])
        format.html { redirect_to [:users, @users_category], notice: 'Categoria foi alterada com sucesso.' }
      else
        format.html { render action: "edit" }

      end
    end
  end

  def destroy
    @users_category = Category.find(params[:id])
    @users_category.destroy

    respond_to do |format|
      format.html { redirect_to users_categories_url }
      format.json { head :no_content }
    end
  end
end
