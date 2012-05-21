class Users::RepresentativesController < ApplicationController
  before_filter {|c| c.can_handle?(:representative)}
  def create
    @representative = User.new(params[:user])
    @representative.access_type = AccessTypes::REPRESENTATIVE
    if @representative.save!
      redirect_to associates_path
    else
      respond_with [:users, @representative]
    end
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
    @representative.destroy!
  end
  
  def update
    @representative = User.find(params[:id])
    @representative.update_attributes(params[:user])
    redirect_to associates_path
  end
end
