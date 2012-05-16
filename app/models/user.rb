class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :access_type,
   :representative, :representative_attributes, :name
  
  has_one :representative
  
  accepts_nested_attributes_for :representative
  def self.get_representatives
    where("access_type = ?", AccessTypes::REPRESENTATIVE)
  end
  
  def self.get_employees
    where("access_type = ?", AccessTypes::EMPLOYEE)
  end
  
  def self.get_admins
    where("access_type = ?", AccessTypes::ADMIN)
  end
end
