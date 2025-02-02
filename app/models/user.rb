class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: true
  validates :username, uniqueness: true
end
