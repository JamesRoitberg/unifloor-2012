# -*- encoding : utf-8 -*-
class Users::AdminsController < ApplicationController
  
  before_filter {|c| c.can_handle?(:admin)}
  
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
  
  def edit
    @admin = User.find(params[:id])
  end

  def update
    @admin = User.find(params[:id])
    @admin.update_attributes(params[:user])  
  end
end


