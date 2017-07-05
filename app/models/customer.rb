class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  validates_presence_of :firstname, :lastname, :email, :password
  validates :password, :confirmation => true, :length => { :minimum => 7 }
end
