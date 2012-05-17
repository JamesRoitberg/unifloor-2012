class Users::AdminsController < ApplicationController

  def new
    @admin = User.new
  end

  def create
    @admin = User.new(params[:user])
    @admin.access_type = AccessTypes::ADMIN
    @admin.save!
    redirect_to users_root_path
  end

  def show
    @admin = User.find(params[:id])
  end

  def destroy
    @admin = User.find(params[:id])
    @admin.destroy!
    redirect_to users_root_path
  end
end
