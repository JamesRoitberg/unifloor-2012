# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json
  
  def after_sign_in_path_for(resource)
    users_root_path
  end
  
  def can_handle?(resource)
    if current_user.access_type == AccessTypes::REPRESENTATIVE
      default_redirect unless representative_has_privilege?(resource)
    elsif current_user.access_type == AccessTypes::EMPLOYEE
      default_redirect unless employee_has_privilege?(resource)
    elsif current_user.access_type == AccessTypes::ADMIN
      true
    end
    false
  end

  def representative_has_privilege?(resource)
    [:product, :category, :order, :customer].include? resource
  end
  
  def employee_has_privilege?(resource)
    [:product, :category, :order, :customer, :representative, :stock,
       :employee].include? resource
  end
  
  def default_redirect
    redirect_to users_root_path, notice: 'Você não tem permissão para acessar esse recurso'
  end
end
