class AssociatesController < ApplicationController
  
  def index
    @admins = User.get_admins
    @representatives = User.get_representatives
    @employees = User.get_employees
  end
end
