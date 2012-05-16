class Users::EmployeesController < ApplicationController
  
  def new
    @employee = User.new
  end
  
  def create
    @employee = User.new(params[:user])
    @employee.access_type = AccessTypes::EMPLOYEE
    @employee.save!
    redirect_to users_root_path
  end
  
  def show
  end
  
  def destroy
    
  end
end
