class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ##devise :database_authenticatable, :registerable,
  ##       :recoverable, :rememberable, :trackable, :validatable
  devise :kerberos_authenticatable, :trackable
  #attr_accessible :username # Strong parameters - see controller
end
