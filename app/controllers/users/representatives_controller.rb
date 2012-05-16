class Users::RepresentativesController < ApplicationController
  
  def create
    @representative = User.new(params[:user])
    @representative.access_type = AccessTypes::REPRESENTATIVE
    @representative.save!
    redirect_to users_root_path
  end
  
  def new
    @representative = User.new
    @representative.build_representative
  end
  
  def show
    @representative = User.find(params[:id])
  end
  
  def edit
    @representative = User.find(params[:id])
  end
  
  def destroy
    @representative = User.find(params[:id])
    @representative.destroy
  end
end
