class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_one  :profile

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, format: { with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i }
  end
end
