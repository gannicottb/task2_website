class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  #Relate Users to Favorites
  has_many :favorites

  #Redundant - user_spec passes without this line.
  #validates :name, :email, :password, :password_confirmation, :remember_me, :name, presence: true
end
