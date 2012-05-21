class Users::EmployeesController < ApplicationController
    before_filter {|c| c.can_handle?(:employee)}
  def new
    @employee = User.new
  end
  
  def create
    @employee = User.new(params[:user])
    @employee.access_type = AccessTypes::EMPLOYEE
    if @employee.save!
      redirect_to associates_path
    else
      respond_with [:users, @employee]
    end
  end
  
  def show
    @employee = User.find(params[:id])
  end
  
  def destroy
    @employee = User.find(params[:id])
    @employee.destroy!
  end
  
  def edit
    @employee = User.find(params[:id])
  end
  
  def update
    @employee = User.find(params[:id])
    @employee.update_attributes(params[:user])
    redirect_to associates_path
  end
end
