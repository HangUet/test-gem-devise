class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :username, :email, :password_confirmation
  has_many :posts
  enum role: {user: 0, admin: 1, manage: 2, cashier: 3}
end
